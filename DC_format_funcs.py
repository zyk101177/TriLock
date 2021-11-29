####################################################################################
# Modify the verilog format
# Input: (synthesis).v
# Output: (modified).v
# Author: Yuke Zhang
# Date: Oct. 17 2020
####################################################################################

import re as re


# read synthesized verilog
def read_synverilog():
    print('Path of .v file (eg: ./ end with /):')
    path = input()
    print('Name of .v file (eg: s27.syn.v):')
    synfile = input()
    #	synfile='s27.syn.v'
    with open(path + synfile, 'r') as f:
        content = f.readlines()
    return path, synfile, content


# modify line by line
def module(line):
    module_line = line
    return (module_line)


def multiwire(line):
    multiwire_line = line
    return (multiwire_line)


def dff(line):
    dff_line = ['dff', line[1], line[2], 'clk,', 'reset,', re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                re.findall(r'[(](.*?)[)]', line[3])[0], line[7]]

    return (dff_line)


def inv(line):
    inv_line = ['not', line[1], line[2], re.findall(r'[(](.*?)[)]', line[4])[0] + ',',
                re.findall(r'[(](.*?)[)]', line[3])[0], line[5]]
    return (inv_line)


def and2(line):
    and2_line = ['and', line[1], line[2], re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                 re.findall(r'[(](.*?)[)]', line[3])[0] + ',', re.findall(r'[(](.*?)[)]', line[4])[0], line[6]]

    return (and2_line)


def nand2(line):
    nand2_line = ['nand', line[1], line[2], re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                  re.findall(r'[(](.*?)[)]', line[3])[0] + ',', re.findall(r'[(](.*?)[)]', line[4])[0], line[6]]
    return (nand2_line)


def or2(line):
    or2_line = ['or', line[1], line[2], re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                re.findall(r'[(](.*?)[)]', line[3])[0] + ',', re.findall(r'[(](.*?)[)]', line[4])[0], line[6]]
    return (or2_line)


def nor2(line):
    nor2_line = ['nor', line[1], line[2], re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                 re.findall(r'[(](.*?)[)]', line[3])[0] + ',', re.findall(r'[(](.*?)[)]', line[4])[0], line[6]]
    return (nor2_line)


def xor2(line):
    xor2_line = ['xor', line[1], line[2], re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                 re.findall(r'[(](.*?)[)]', line[3])[0] + ',', re.findall(r'[(](.*?)[)]', line[4])[0], line[6]]
    return (xor2_line)


def xnor2(line):
    xnor2_line = ['xnor', line[1], line[2], re.findall(r'[(](.*?)[)]', line[5])[0] + ',',
                  re.findall(r'[(](.*?)[)]', line[3])[0] + ',', re.findall(r'[(](.*?)[)]', line[4])[0], line[6]]
    return (xnor2_line)


def buf(line):
    buf_line = ['buf', line[1], line[2], re.findall(r'[(](.*?)[)]', line[4])[0] + ',',
                re.findall(r'[(](.*?)[)]', line[3])[0], line[5]]
    return (buf_line)


def modify_line(line):
    if line == []:
        mdf_line = line
    elif line[0] == 'module':
        mdf_line = module(line)
    elif line[0] == 'wire' and '[' in line[1]:
        mdf_line = multiwire(line)
    elif line[0][0:3] == 'DFF':
        mdf_line = dff(line)
    elif (line[0][0:3] == 'INV'):
        mdf_line = inv(line)
    elif line[0][0:4] == 'AND2':
        mdf_line = and2(line)
    elif line[0][0:5] == 'NAND2':
        mdf_line = nand2(line)
    elif line[0][0:4] == 'NOR2':
        mdf_line = nor2(line)
    elif line[0][0:3] == 'OR2':
        mdf_line = or2(line)
    elif line[0][0:4] == 'XOR2':
        mdf_line = xor2(line)
    elif line[0][0:5] == 'XNOR2':
        mdf_line = xnor2(line)
    elif line[0][0:3] == 'BUF':
        mdf_line = buf(line)
    else:
        mdf_line = line
    return mdf_line


def getdff():
    with open('dff.v', 'r') as fdff:
        dffmodule = fdff.readlines()
    return dffmodule


def reformat_syn(path, synfile):
    with open(path + synfile, 'r') as f:
        content = f.readlines()
    mdf_verilog = []
    count = 0
    #	AddWire=False
    NoWire = 0
    check_set = ['INV_', 'AND2', 'NAND', 'NOR2', 'OR2_', 'XOR2', 'XNOR', 'DFF_', 'BUF_', 'endm']

    # check_set = {'DFF_X1', 'DFF_X2', 'INV_X1', 'INV_X2', 'INV_X4', 'AND2_X1', 'AND2_X2', 'AND2_X4', 'NAND2_X1', 'NAND2_X2', 'NAND2_X4', 'NOR2_X1', 'NOR2_X2', 'NOR2_X4', 'OR2_X1', 'OR2_X2', 'OR2_X4', 'XOR2_X1', 'XOR2_X2', 'XOR2_X4', 'XNOR2_X1', 'XNOR2_X2', 'XNOR2_X4', 'BUF_X1'}
    i = 0
    while i < len(content):
        line = content[i]
        line = line.split()

        if line != [] and '//' in line[0]:
            i += 1
            continue

        if (line != []) and (line[0] == 'wire') and (line[1].find('[') == -1):
            st_wire = i

        # find single line dff
        if (i < len(content) - 2) and (line != []) and (line[0][0:4] in check_set):
            line_nxt = content[i + 1]
            line_nxt2 = content[i + 2]
            line_nxt = line_nxt.split()
            line_nxt2 = line_nxt2.split()
            if (line_nxt == []) or (line_nxt[0][0:4] in check_set):
                mdf_line = modify_line(line)
                i += 1
            else:
                # print(line)
                # print(line_nxt)
                # print('Error happens when reformatting the err_gen.v. Multiple lines happens in :', synfile, line)
                if (line_nxt2 == []) or (line_nxt2[0][0:4] in check_set):
                    if line_nxt[0] == ');' or line_nxt[0][0] == '.':
                        line = line + line_nxt
                    else:
                        line = '{0}{1}'.format(' '.join(line), ' '.join(line_nxt))
                        line = line.split()
                    i += 2
                    mdf_line = modify_line(line)
                    # print(line)
                else:
                    if line_nxt2[0] == ');' or line_nxt2[0][0] == '.':
                        tmpline = line_nxt + line_nxt2
                    else:
                        tmpline = '{0}{1}'.format(' '.join(line_nxt), ' '.join(line_nxt2))
                        tmpline = tmpline.split()
                    if tmpline[0] == ');' or tmpline[0][0] == '.':
                        line = line + tmpline
                    else:
                        line = '{0}{1}'.format(' '.join(line), ' '.join(tmpline))
                        line = line.split()
                    i += 3
                    mdf_line = modify_line(line)

        else:
            mdf_line = modify_line(line)
            i += 1

        # assign wire if Q is empty
        if mdf_line != [] and mdf_line[0] == 'dff' and mdf_line[5] == ',':
            wire = 'ex_wire' + str(NoWire) + ','
            mdf_line[5] = wire
            mdf_verilog[st_wire].insert(-1, wire)
            NoWire += 1
        mdf_verilog.append(mdf_line)
        # add inverter for QN in DFF
        if mdf_line != [] and mdf_line[0] == 'dff' and re.findall(r'[(](.*?)[)]', line[6])[0] != '':
            inv_name = 'U_inv' + str(count)
            inv_line = ['not', inv_name, '(', re.findall(r'[(](.*?)[)]', line[6])[0] + ',', mdf_line[5][:-1], ');']
            mdf_verilog.append(inv_line)
            count += 1
    return mdf_verilog


def check_signal_name(line):
    # remove brackets '[]' cause they cannot be parsed by circuitgraph
    if line != [] and line[0] != 'wire':
        for i in range(len(line)):
            line[i] = line[i].replace('[', '_parse_').replace(']', '')
    return line


def reformate_for_parse(mdfverilog):
    state = []
    nxt_state = []
    ext_state = []
    nxt_ext_state = []

    for i in range(len(mdfverilog)):
        line = mdfverilog[i]
        line = check_signal_name(line)
        if line != [] and line[0] == 'wire' and '[' in line[1]:
            line[0] = '//wire'
            # print(line)
        elif line != [] and line[0] == 'dff':
            line[0] = 'not'
            del line[3:5]
            if line[1][0:3] == 'e0_':     # for TriLock
            # if line[1][0:3] == 'e1_':         # for interlocking
                state.append(line[3][0:-1])  # remove comma
                nxt_state.append(line[4])  # no comma
            elif line[1][0:3] == 'e1_' or line[1][0:5]=='dcarr' or line[1][0:5]=='dborr':    # for TriLock
            # elif line[1][0:3] in ['e0_', 'e2_']:     # for interlocking
                ext_state.append(line[3][0:-1])
                nxt_ext_state.append(line[4])
            # print(line)
        # new_verilog.append(line)

    return mdfverilog, state, nxt_state, ext_state, nxt_ext_state
