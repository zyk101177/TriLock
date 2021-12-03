import os
import math
import numpy as np
import re
import random
import circuitgraph as cg
import DC_format_funcs
import networkx as nx
import circuitfuncs


# ================================.=================================== #
# Check Parameter constraints .v
# ================================.=================================== #

def check_constraints(kd, kf, umin):
    if umin < 2 * kd + kf:
        print('umin >= 2*kd + kf!')
        exit()
    return


# ================================.=================================== #
# Check Parameter constraints .v
# ================================.=================================== #
def change_dff_wire_name(bench, wirename):
    print('Wire name conflict in bench: !!!!!', bench, wirename)
    exit()
    return


# ================================.=================================== #
# Extract state signals from original .v
# ================================.=================================== #
def modify_ori_verilog(bench):
    bench_ori = []

    #  read ori.v get input bit, output bit
    readpath = './ori/' + bench + '_ori/' + bench + '_ori.v'
    with open(readpath, 'r') as fori:
        content = fori.readlines()
        for item in content:
            bench_ori.append(item.split())

    ed = len(bench_ori)

    for i in range(ed):
        # print(bench_ori[i])
        if bench_ori[i][0:2] == ['module', bench + '_ori']:
            st_module = i

        elif (bench_ori[i] != []) and (bench_ori[i][0] == 'input') and (bench_ori[i][1] != 'wire'):
            st_input = i

        elif (bench_ori[i] != []) and (bench_ori[i][0] == 'output') and (bench_ori[i][1] != 'reg'):
            st_output = i

        elif (bench_ori[i] != []) and (bench_ori[i][0] == 'wire') and (bench_ori[i][1].find('[') == -1):
            st_wire = i

        elif (bench_ori[i] != []) and ((bench_ori[i][0] == 'assign') or (bench_ori[i][0] == 'dff')):
            end_wire = i
            break

    nxt_state = []
    decode_state = []
    n_state = 0
    for i in range(end_wire + 1, ed):
        if (bench_ori[i] != []) and (bench_ori[i][0] == 'dff'):
            if bench_ori[i][5].find('state[') != -1:
                wirename = bench_ori[i][5]
                change_dff_wire_name(bench, wirename)
            elif bench_ori[i][6].find('enc_nxt_state[') != -1:
                wirename = bench_ori[i][6]
                change_dff_wire_name(bench, wirename)
            else:
                nxt_state.append(re.sub('[,;)]', '', bench_ori[i][6]))
                decode_state.append(re.sub('[,;)]', '', bench_ori[i][5]))
                bench_ori[i][5] = 'state[' + str(n_state) + '],'
                bench_ori[i][6] = 'enc_nxt_state[' + str(n_state) + ']'
                n_state = n_state + 1

    # print(st_module, st_input, st_output, st_wire, end_wire)

    input = bench_ori[st_input:st_output]
    input = [item for sublist in input for item in sublist]
    input = [re.sub('[,;)]', '', item) for item in input]
    input.remove('input')
    input.remove('clk')
    input.remove('reset')

    output = bench_ori[st_output:st_wire]
    output = [item for sublist in output for item in sublist]
    output = [re.sub('[,;)]', '', item) for item in output]
    output.remove('output')

    n_input = len(input)
    n_output = len(output)

    input_module = input + ['enc_nxt_state', 'decode_state']
    output_module = output + ['nxt_state', 'state']

    wire = bench_ori[st_wire:end_wire]
    wire = [item for sublist in wire for item in sublist]

    # print('input: ', input)
    # print(input_module)
    # print('output: ', output)
    # print(output_module)
    # print('nxt_state: ', nxt_state)
    # print('decode_state', decode_state)

    module = []
    module.append('module ' + bench + '_ori (clk, reset, ' + ','.join(input_module + output_module) + '); \n')
    module.append('input clk, reset, ' + ','.join(input) + ';\n')
    module.append('input [0:' + str(n_state - 1) + '] enc_nxt_state, decode_state; \n')
    module.append('output ' + ','.join(output) + ';\n')
    module.append('output [0:' + str(n_state - 1) + '] nxt_state, state;\n')
    # module.append(' '.join(wire) + '\n')
    for i in range(st_wire, end_wire):
        module.append(' '.join(bench_ori[i])+'\n')
    module.append('assign nxt_state[0:' + str(n_state - 1) + '] = {' + ','.join(nxt_state) + '};\n')
    module.append('assign {' + ','.join(decode_state) + '} = decode_state[0:' + str(n_state - 1) + '];\n')

    ori_verilog = []
    for i in range(st_module):
        ori_verilog.append(' '.join(bench_ori[i]) + '\n')
    ori_verilog = ori_verilog + module
    for i in range(end_wire, ed):
        ori_verilog.append(' '.join(bench_ori[i]) + '\n')

    param = {'bench': bench, 'input': input, 'output': output, 'n_input': n_input,
             'n_output': n_output, 'n_state': n_state}

    return param, ori_verilog


# ================================.=================================== #
# Set key and encryption parameters
# rule1: dips equation
# rule2: increase FC
# key_max is not included in rule 1 to reduce overhead and simplify coding.
# input with smallest index are selected for rule 1 to reduce overhead.
# ================================.=================================== #
def enc_param(param, kd, kf, umin, errbit, rule2_factor):
    tk = kd + kf
    key = []
    for i in range(tk):
        single_key = np.random.randint(2, size=param['n_input'])
        single_key = [str(item) for item in single_key]
        key.append(''.join(single_key))
    # print(key)

    # real range
    # rule_in = random.sample(range(tk + 1, umin), kd - 1)
    # for low overhead

    rule1_in = random.sample(range(tk + 1, tk + kd), kd - 1)

    # stcount = max(rule1_in) + 1
    stcount = umin
    counter_bit = math.ceil(math.log2(stcount))
    rule1_in.append(umin)
    rule1_key = random.sample(range(1, tk), kd)
    rule2_fc = list(set(range(1, tk + 1)) - set(rule1_key))
    rule2_fc.sort()
    # rule2_factor = 2
    # EstFC = 1 / rule2_factor

    # print('key index: ', rule1_key, '= input index: ', rule1_in)
    # print('rule_fc', rule2_fc)
    # print(stcount, counter_bit)
    # print('Est. FC: ', EstFC)

    param['key'] = key
    param['rule1_in'] = rule1_in
    param['rule1_key'] = rule1_key
    param['rule2_fc'] = rule2_fc
    param['rule2_factor'] = math.floor(rule2_factor/100*(pow(2, param['n_input']*kf)-1))
    param['stcount'] = stcount
    param['counter_bit'] = counter_bit
    param['errbit'] = errbit
    return param


# ================================.=================================== #
# Error generator
# ================================.=================================== #
def encryption_funcs_gen(param, kd, kf, umin):
    # index of key & in needs to be stored

    cnt = list(set(range(1, 2 * kd + kf)) - {kd + kf})
    # print(cnt)

    cnt_list = []
    cnt_param_list = []
    for i in range(len(cnt)):
        cnt_list.append('cnt' + str(i + 1) + '=' + str(cnt[i] - 1))
        cnt_param_list.append(' .cnt' + str(i + 1) + '(cnt' + str(i + 1) + ')')
    # print(cnt_list)
    # print(cnt_param_list)

    in_mem_list = []
    for i in range(len(cnt)):
        if cnt[i] < kd + kf:
            in_mem_list.append('key' + str(cnt[i]))
        else:
            in_mem_list.append('in' + str(cnt[i]))
    # print(in_mem_list)

    # err_gen
    err_gen = []
    err_gen.append('module err_gen\n')
    err_gen.append('#(parameter inbit=' + str(param['n_input']) + ', outbit=' + str(param['n_output'])
                   + ', errbit=' + str(param['errbit']) + ', stcount=' + str(param['stcount']) +
                   ', counter_bit=' + str(param['counter_bit']) + ', ' + ','.join(cnt_list) + ')\n')
    err_gen.append('(input clk, reset,\n')
    err_gen.append('input [inbit-1:0] in,\n')
    err_gen.append('output [errbit-1:0] err_sig, \n')
    err_gen.append('output rst);\n\n')

    err_gen.append('wire [counter_bit-1:0] count;\n')
    err_gen.append('wire [inbit-1:0] ' + ','.join(in_mem_list) + ';\n')

    err_gen.append('counter #(.counter_bit(counter_bit), .stcount(stcount)) e0(clk, reset, count);\n')
    err_gen.append('register #(' + ','.join(
        cnt_param_list) + ', .inbit(inbit), .counter_bit(counter_bit)) e1( clk, reset, count, in, ' +
                   ','.join(in_mem_list) + ');\n')
    err_gen.append('err_gen_cntrl #(.inbit(inbit), .errbit(errbit)) e2(clk, reset, in, '
                   + ','.join(in_mem_list) + ', err_sig, rst);\n')

    err_gen.append('endmodule\n\n')

    # err_gen_cntrl
    # s_state: checking keys and rule 1 (FC rule)
    # d_state: minimum unrolling
    # r_state: rule 1 check (DIPs rule)

    tk = kd + kf
    s_state = []
    for i in range(tk + 1):
        s_state.append('s' + str(i))

    r_state = []
    d_state = []
    for i in range(umin - tk):
        r_state.append('r' + str(i))
        d_state.append('d' + str(i))
    d_state.append('d' + str(umin - tk))

    state_list = s_state + r_state + d_state
    total_state = len(state_list)
    statebit = math.ceil(math.log2(total_state))

    # out = random.sample(range(0, pow(2, param['errbit'])), total_state)

    err_out = np.random.randint(pow(2, param['errbit']), size=1)
    # print('err_out: ', err_out)
    param['err_out'] = err_out[0]
    err_out_range = [i for i in range(0, pow(2, param['errbit']))]
    err_out_range.remove(err_out)

    state_out = {}
    for i in range(total_state):
        state_out[state_list[i]] = str(param['errbit']) + '\'d' + str(random.sample(err_out_range, 1)[0])
    state_out[d_state[-1]] = str(param['errbit']) + '\'d' + str(err_out[0])
    # print(state_out)

    key_check = ['key' + str(i) for i in range(1, tk)]
    key_check.append('in')
    # print(key_check)

    rule2 = []
    for i in param['rule2_fc']:
        rule2.append('key' + str(i))
    # print(rule2)
    rule2_replace_element='key'+str(tk)
    rule2=['in' if ele == rule2_replace_element else ele for ele in rule2]
    # print(rule2)

    rule1_key = []
    for i in param['rule1_key']:
        rule1_key.append('key' + str(i))
    rule1_in = []
    for i in param['rule1_in']:
        rule1_in.append('in' + str(i))
    rule1_in = rule1_in[0:-1]
    rule1_in.append('in')

    # print('rule1_key:', rule1_key, 'rule1_in: ', rule1_in)

    err_gen_cntrl = []
    err_gen_cntrl.append('module err_gen_cntrl\n')
    err_gen_cntrl.append('#(parameter inbit=' + str(param['n_input']) + ', errbit=' + str(param['errbit']) + ')\n')
    err_gen_cntrl.append('(input clk, reset,\n')
    err_gen_cntrl.append('input [inbit-1:0] in, ' + ','.join(in_mem_list) + ', \n')
    err_gen_cntrl.append('output reg [errbit-1:0] out,\n')
    err_gen_cntrl.append('output reg rst); \n\n')

    for i in range(total_state):
        err_gen_cntrl.append('parameter ' + state_list[i] + '=' + str(statebit) + '\'d' + str(i) + ';\n')

    err_gen_cntrl.append('reg[' + str(statebit - 1) + ':0] state, nxt_state;\n\n')
    err_gen_cntrl.append('always @(*) begin\n')
    err_gen_cntrl.append('    case(state)\n')

    for i in range(len(s_state) - 2):
        err_gen_cntrl.append('\t' + s_state[i] + ': begin nxt_state=' + s_state[i + 1] + '; out=' + state_out[
            s_state[i]] + '; rst=0; end \n')
    err_gen_cntrl.append('\t' + s_state[-2] + ': begin nxt_state=({' + ','.join(key_check) + '}=='
                         + str(tk * param['n_input']) + '\'b' + ''.join(param['key']) + ') ? ' + s_state[-1]
                         + ':( {' + ','.join(rule2) + '}<' +str(len(rule2)*param['n_input'])+'\'d'+ str(param['rule2_factor']) + ')? ' + d_state[0] + ': ' +
                         r_state[0] + '; out=' + state_out[
                             s_state[-2]] + '; rst=1; end\n')
    err_gen_cntrl.append(
        '\t' + s_state[-1] + ': begin nxt_state=' + s_state[-1] + '; out=' + state_out[s_state[-1]] + '; rst=0; end\n')

    for i in range(len(d_state) - 1):
        err_gen_cntrl.append('\t' + d_state[i] + ': begin nxt_state=' + d_state[i + 1] + '; out=' + state_out[
            d_state[i]] + '; rst=0; end \n')
    err_gen_cntrl.append(
        '\t' + d_state[-1] + ': begin nxt_state=' + d_state[-1] + '; out=' + state_out[d_state[-1]] + '; rst=0; end\n')

    for i in range(len(r_state) - 1):
        err_gen_cntrl.append('\t' + r_state[i] + ': begin nxt_state=' + r_state[i + 1] + '; out=' + state_out[
            r_state[i]] + '; rst=0; end \n')
    err_gen_cntrl.append(
        '\t' + r_state[-1] + ': begin nxt_state=({' + ','.join(rule1_in) + '}=={' + ','.join(rule1_key) + '})? ' +
        d_state[-1] + ': ' + s_state[-1] + '; out=' + state_out[r_state[-1]] + '; rst=0; end\n')
    err_gen_cntrl.append('  default: begin nxt_state=s0; out=0; rst=0; end\n')
    err_gen_cntrl.append('  endcase\n end \n\n')
    err_gen_cntrl.append('always @ (posedge clk) begin\n')
    err_gen_cntrl.append('  if (reset) begin\n')
    err_gen_cntrl.append('     state <= s0;\n')
    err_gen_cntrl.append('  end else begin\n')
    err_gen_cntrl.append('     state <= nxt_state;\n')
    err_gen_cntrl.append('end\n end\n endmodule\n\n')

    # print(err_gen_cntrl)

    # counter
    counter = []
    counter.append('module counter\n')
    counter.append('#(parameter counter_bit=' + str(param['counter_bit']) + ', stcount=' + str(param['stcount']) + ')\n')
    counter.append('(input clk, reset, \n output reg [counter_bit-1:0] out);\n\n')
    counter.append('always @ (posedge clk) begin\n')
    counter.append('    if (reset)\n')
    counter.append('         out <=0;\n')
    counter.append('    else if (out==stcount+1)\n')
    counter.append('         out <= stcount+1;\n')
    counter.append('    else\n')
    counter.append('         out <= out+1;\n')
    counter.append('end\n endmodule\n \n')

    # register
    register_out = []
    reg_out_init = []
    for i in range(len(cnt)):
        register_out.append('out' + str(i + 1))
        reg_out_init.append('out' + str(i + 1) + ' <= 0')
    # print(register_out)
    # print(reg_out_init)

    register = []
    register.append('module register\n')
    register.append('#(parameter ' + ','.join(cnt_list) + ', inbit=' + str(param['n_input']) +
                    ', counter_bit=' + str(param['counter_bit']) + ')\n')
    register.append('(input clk, reset,\n')
    register.append('input [counter_bit-1:0] count,\n')
    register.append('input [inbit-1:0] in,\n')
    register.append('output reg [inbit-1:0] ' + ','.join(register_out) + ');\n\n')

    register.append('always @(posedge clk) begin\n')
    register.append('  if (reset) begin\n')
    register.append('   ' + '; '.join(reg_out_init) + ';\n')

    for i in range(len(cnt)):
        register.append('     end else if (count==cnt' + str(i + 1) + ') begin\n')
        register.append('      out' + str(i + 1) + ' <= in;\n')
    register.append('    end\n end \n endmodule\n\n')

    # bench_enc.v without state re-encode

    out_ori=[item+'_ori' for item in param['output']]

    encrypt_no_reencode = []
    encrypt_no_reencode.append('module ' + param['bench'] + '_enc\n')
    encrypt_no_reencode.append('#(parameter inbit=' + str(param['n_input']) + ', outbit=' + str(param['n_output'])
                   + ', errbit=' + str(param['errbit']) + ', stcount=' + str(param['stcount']) +
                   ', counter_bit=' + str(param['counter_bit']) + ', ' + ','.join(cnt_list) + ', state_bit='+str(param['n_state'])+')\n')

    encrypt_no_reencode.append('(input clk, reset, \n')

    encrypt_no_reencode.append('input '+','.join(param['input'])+',\n')
    encrypt_no_reencode.append('output '+','.join(param['output'])+');\n\n')

    encrypt_no_reencode.append('wire [0:state_bit-1] nxt_state, nxt_enc_state, decode_state;\n')
    encrypt_no_reencode.append('wire rst, rst_ori;\n')
    encrypt_no_reencode.append('wire '+','.join(out_ori)+';\n')
    encrypt_no_reencode.append('wire [errbit-1:0] err_sig;\n')


    encrypt_no_reencode.append(param['bench']+'_ori e0 (clk, rst_ori, '+','.join(param['input'])+', nxt_enc_state, decode_state, '
                               +','.join(out_ori)+', nxt_state, decode_state);\n')
    encrypt_no_reencode.append('err_gen e1(clk, reset, {'+','.join(param['input'])+'}, err_sig, rst);\n')
    encrypt_no_reencode.append('next_state_func #(.inbit(inbit), .state_bit(state_bit), .errbit(errbit)) e2(nxt_state,{'
                               +','.join(param['input'])+'}, err_sig, nxt_enc_state);\n')
    encrypt_no_reencode.append('out_func #(.inbit(inbit), .outbit(outbit), .state_bit(state_bit), .errbit(errbit)) e3(nxt_state, {'
                               +','.join(param['input'])+'}, {'+','.join(out_ori)+'}, err_sig, {'+','.join(param['output'])+'});\n')
    encrypt_no_reencode.append('or (rst_ori, reset, rst);\n')
    encrypt_no_reencode.append('endmodule\n\n')

    return err_gen, err_gen_cntrl, counter, register, encrypt_no_reencode


# ================================.=================================== #
# obfuscation funcs
# ================================.=================================== #

def obf_funcs(param):
    next_state_func = []
    next_state_func.append('module next_state_func\n')
    next_state_func.append('#(parameter inbit=' + str(param['n_input']) + ', state_bit='
                           + str(param['n_state']) + ', errbit=' + str(param['errbit']) + ')\n')
    next_state_func.append('(input [state_bit-1:0] state, \n')
    next_state_func.append('input [inbit-1:0] in, \n')
    next_state_func.append('input [errbit-1:0] err_sig,\n')
    next_state_func.append('output reg [state_bit-1:0] nt_state);\n\n')

    next_state_func.append('always @(*) begin\n')
    next_state_func.append('     if (err_sig ==' + str(param['err_out']) + ') begin\n')

    if (param['n_input'] >10):
        next_state_func.append('       nt_state = state ^ in[9:0];\n')
    else:
        next_state_func.append('       nt_state = state ^ in;\n')
    next_state_func.append('  end else begin\n')
    next_state_func.append('	nt_state = state;\n')
    next_state_func.append('end\n end \n endmodule\n \n')

    out_func = []
    out_func.append('module out_func\n')
    out_func.append('#(parameter inbit=' + str(param['n_input']) + ', outbit=' + str(param['n_output'])
                    + ', state_bit=' + str(param['n_state']) + ', errbit=' + str(param['errbit']) + ')\n')
    out_func.append('(input [state_bit-1:0] state,\n')
    out_func.append('input [inbit-1:0] in,\n')
    out_func.append('input [outbit-1:0] ori_out,\n')
    out_func.append('input [errbit-1:0] err_sig,\n')
    out_func.append('output reg [outbit-1:0] out);\n\n')

    out_func.append('always @(*) begin\n')
    out_func.append('     if (err_sig ==' + str(param['err_out']) + ') begin\n')
    if (param['n_input'] >10):
        out_func.append('        out = state ^ in[9:0];\n')
    else:
        out_func.append('        out = state ^ in;\n')

    out_func.append('  end else begin\n')
    out_func.append('        out = ori_out;\n')
    out_func.append('end\n end \n endmodule\n \n')

    return next_state_func, out_func


# ================================.=================================== #
# write files w/o state reencoding
# ================================.=================================== #


def write_no_reencode_files(bench, kd, kf, umin, errbit, rule2_factor):
    # write modified ori

    param, ori_verilog = modify_ori_verilog(bench)
    param=enc_param(param, kd, kf, umin, errbit, rule2_factor)
    dc_path = './DC_noreencode/' + bench + '/' + bench + '_kd' + str(kd) + '_kf' + str(kf) + '_umin' + str(umin) +'_errbit' + str(errbit) + '_fcf'+str(rule2_factor) + '_r0/'

    err_gen, err_gen_cntrl, counter, register, encrypt_no_reencode=encryption_funcs_gen(param, kd, kf, umin)
    next_state_func, out_func=obf_funcs(param)

    real_key=param['key']
    # print(bench, 'inputs: ', param['input'], 'outputs:', param['output'])
    if not os.path.exists(dc_path):
        os.makedirs(dc_path)

    with open(dc_path + bench + '_ori.v', 'w') as fori:
        for item in ori_verilog:
            fori.write(item)

    with open(dc_path + bench +'_enc.v', 'w') as fenc:
        for item in encrypt_no_reencode:
            fenc.write(item)
        for item in err_gen:
            fenc.write(item)
        for item in err_gen_cntrl:
            fenc.write(item)
        for item in counter:
            fenc.write(item)
        for item in register:
            fenc.write(item)
        for item in next_state_func:
            fenc.write(item)
        for item in out_func:
            fenc.write(item)


    return real_key

# ================================.=================================== #
# preparation for state reencoding
# ================================.=================================== #

def re_encode_states_final(syn_verilog, filename):

    mdfpath = './mdf_v/'
    if not os.path.exists(mdfpath):
        os.makedirs(mdfpath)

    parsed_verilog, state, nxt_state, ext_state, nxt_ext_state = DC_format_funcs.reformate_for_parse(syn_verilog)
    with open('./mdf_v/mdf_' + filename, 'w') as fmdfv:
        for item in parsed_verilog:
            fmdfv.write(' '.join(item) + '\n')

    # entire DFF graph #
    c = cg.from_file(mdfpath+'mdf_'+filename)
    G = nx.DiGraph()
    colormap = ['blue', 'orange', 'red', 'black']
    G = circuitfuncs.construct_digraph(G, c, state, nxt_state, ext_state, nxt_ext_state, colormap)

    ori_state_set = set(state)
    ext_state_set = set(ext_state)
    n_ori_state=len(state)
    n_ext_state=len(ext_state)

    scc_o, scc_e, scc_m, n_scc_ori, n_scc_ext, n_scc_mix = circuitfuncs.find_scco_scce_sccm(G, ori_state_set, ext_state_set, n_ori_state, n_ext_state)

    se_list=[]
    so_list=[]
    i=0

    while (scc_o != [] or scc_e !=[]) and (i<32):
        # print('-------iteration{}--------'.format(i))
        # print('# sccO: {}, #sccE: {}, #sccM: {}'.format(n_scc_ori, n_scc_ext, n_scc_mix))
        if scc_o != [] and scc_e !=[]:
            O = circuitfuncs.largest_scc(scc_o)
            E = circuitfuncs.largest_scc(scc_e)
            # no = circuitfuncs.most_neighbor_node(G, O)
            # ne = circuitfuncs.most_neighbor_node(G, E)
            for node in O:
                if node not in se_list and node not in so_list and node[-2:] != '_c' and node[-2:] != '_b':
                    no = node
                    break
            if i > 1:
                if no == so_list[-1]:
                    break

            for node in E:
                if node not in se_list and node not in so_list and node[-2:] != '_c' and node[-2:] != '_b':
                    ne = node
                    break
            if i >1:
                if ne == se_list[-1]:
                    break

        elif scc_o == []:
            O = circuitfuncs.largest_scc(scc_m)
            E = circuitfuncs.largest_scc(scc_e)
            ne = circuitfuncs.most_neighbor_node(G, E)
            for node in O:
                if node not in se_list and node not in so_list and node[-2:] != '_c' and node[-2:] != '_b':
                    no = node
                    break
            if no == so_list[-1]:
                break

            if ne == se_list[-1]:
                break

        elif scc_e == []:
            E = circuitfuncs.largest_scc(scc_m)
            O = circuitfuncs.largest_scc(scc_o)
            no = circuitfuncs.most_neighbor_node(G, O)

            if no == so_list[-1]:
                break

            for node in E:
                if node not in se_list and node not in so_list and node[-2:] != '_c' and node[-2:] != '_b':
                    ne = node
                    break
            if ne == se_list[-1]:
                break

            # print('no :{}, ne: {}'.format(no, ne))

        se_list.append(ne)
        so_list.append(no)
        G = circuitfuncs.update_graph(G, ne, no)
        scc_o, scc_e, scc_m, n_scc_ori, n_scc_ext, n_scc_mix = circuitfuncs.find_scco_scce_sccm(G, ori_state_set,
                                                                                                ext_state_set,
                                                                                                n_ori_state,
                                                                                                n_ext_state)
        # print('se_list: ', se_list)
        # print('so_list: ', so_list)
        i += 1


    len_o = len(so_list)
    len_e = len(se_list)

    len_o_set = len(set(so_list))
    len_e_set = len(set(se_list))

    if len_o != len_e:
        print('se_list and so_list: lengths don\'t match!')
    if len_o != len_o_set:
        print('Duplicate so nodes!')
        exit()
    if len_e != len_e_set:
        print('Duplicate se nodes!')
        exit()

    state = change_parse_in_state(state)
    nxt_state = change_parse_in_state(nxt_state)
    ext_state = change_parse_in_state(ext_state)
    nxt_ext_state = change_parse_in_state(nxt_ext_state)

    reencode_dffs = dict(zip(state + ext_state, nxt_state + nxt_ext_state))
    # print(reencode_dffs)

    return se_list, so_list, reencode_dffs


# ================================.=================================== #
# Directly insert the state encoders and state decoders
# ================================.=================================== #

def write_reencode_files(folder, bench, kd, kf, umin, errbit, rule2_factor, ratio, se_list, so_list, reencode_dffs):

    dc_path = '{7}{0}/{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}_r{6}/'.format(bench, kd, kf, umin, errbit, rule2_factor, ratio, folder)

    # get original netlists
    orinetlist_path = './netlists/'
    orinetlist_file = '{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}_r0.syn.v'.format(bench, kd, kf, umin, errbit, rule2_factor)
    mdf_verilog = DC_format_funcs.reformat_syn(orinetlist_path, orinetlist_file)

    #   modify the netlists
    reencode_enc = add_encoder(mdf_verilog, se_list, so_list, reencode_dffs, ratio)

    if not os.path.exists(dc_path):
        os.makedirs(dc_path)

    with open('./dff_encoder.v', 'r') as fdff:
        dff_encoder = fdff.readlines()

    with open(dc_path + bench +'_enc.v', 'w') as fenc:
        for item in dff_encoder:
            fenc.write(item)
        for item in reencode_enc:
            fenc.write(item)

    return


def add_encoder(verilog, se_list, so_list, reencode_dffs, ratio):
    # verilog is the reformated syn.v
    # reencode_states is the dictionary stores se and so pairs. se is the key, so is the value

    verilog_ende=[]
    v_ed = len(verilog)
    n_ense_pair = ratio
    add_wire = []

    for i in range(v_ed):
        line = verilog[i]
        # print(line)
        if (line != []) and (line[0] == 'dff'):
            st_dff = i
            break
        else:
            # print(verilog[i])
            verilog_ende.append(' '.join(line)+'\n')

    for i in range(1, n_ense_pair+1):
        add_wire.append('c{}'.format(i))
        add_wire.append('c_d{}'.format(i))
        add_wire.append('b{}'.format(i))
        add_wire.append('b_d{}'.format(i))
        add_wire.append('en_se{}'.format(i))
        # add_wire.append('en_so{}'.format(i))
        add_wire.append('de_se{}'.format(i))
        # add_wire.append('de_so{}'.format(i))

    verilog_ende.append('wire {}; \n'.format(', '.join(add_wire)))

    for i in range(1, n_ense_pair+1):
        se = se_list[i-1]
        so = so_list[i-1]
        verilog_ende.append('encoder2 sten{0} ({1}, {2}, c{0}, b{0}, en_se{0}); \n'.format(i, reencode_dffs[se], reencode_dffs[so]))
        verilog_ende.append('decoder2 stde{0} (c_d{0}, b_d{0}, de_se{0}, {1}, {2}); \n'.format(i, se, so))
        verilog_ende.append('dff dcarry{0} (clk, reset, c_d{0}, c{0}); \n'.format(i))
        verilog_ende.append('dff dborrow{0} (clk, reset, b_d{0}, b{0}); \n'.format(i))

    for i in range(st_dff, v_ed):
        line = verilog[i]

        if line != [] and line[0] == 'dff':
            Q = line[5][:-1]
            if Q in se_list:
                # print(line)
                nstate = se_list.index(Q)+1
                line[5] = 'de_se{0},'.format(nstate)
                line[6] = 'en_se{0}'.format(nstate)
                verilog_ende.append(' '.join(line)+'\n')
            elif Q in so_list:
                nstate = so_list.index(Q)+1
                line[5] = 'de_so{0},'.format(nstate)
                line[6] = 'en_so{0}'.format(nstate)
                verilog_ende.append('// '+' '.join(line)+'\n')
            else:
                verilog_ende.append(' '.join(line)+'\n')
        else:
            verilog_ende.append(' '.join(line)+'\n')

    # print(verilog_ende)
    return verilog_ende

def change_parse_in_state(list):
    n_list = len(list)
    for i in range(n_list):
        item = list[i]
        if '_parse_' in item:
            item = item.replace('_parse_', '[')
            item = item + ']'
        list[i] = item
    return list
