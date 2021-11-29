import os
import shutil

import DC_format_funcs
import circuitfuncs
import functions
import time

def genDC_renencoding():
    folder = './DC_reencode/'
    if os.path.exists(folder):
        shutil.rmtree(folder)

    # build DC files: reports, netlists, libs, setup.txt, run.tcl
    if not os.path.exists(folder+'reports'):
        os.makedirs(folder+'reports')
    if not os.path.exists(folder+'netlists'):
        os.makedirs(folder+'netlists')


    shutil.copy('./DC_setup/setup.txt', folder)
    shutil.copy('./DC_setup/run_sr.tcl', folder)
    shutil.copytree('./DC_setup/lib', folder+'lib')
    # shutil.copytree('./ori', folder+'ori')

    # read bench info
    with open('bench_names.txt', 'r') as fbench:
        benchinfo = fbench.readlines()
        n_bench = len(benchinfo)
        for i in range(n_bench):
            benchinfo[i] = benchinfo[i].split()

    with open(folder+'bench_names.txt', 'w') as fwtbench:
        fwtbench.write('bench\tkd\tkf\tumin\terrbit\trule2_factor\tratio\n')
        # write DC verilog files
        se_so_dict = {}
        dff_dict = {}
        for i in range(1, n_bench):
            bench = benchinfo[i][0]
            kd = int(benchinfo[i][1])
            kf = int(benchinfo[i][2])
            umin = int(benchinfo[i][3])
            errbit = int(benchinfo[i][4])
            rule2_factor = int(benchinfo[i][5])
            ratio = int(benchinfo[i][6])

            functions.check_constraints(kd, kf, umin)

            # before writing the DC files, get se_so_dict, se_so_dict and dff_dict
            if kd != 0 and kf != 0 and umin != 0 and ratio == 0:
                r0file_path = './netlists/'
                r0file = '{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}_r0.syn.v'.format(bench, kd, kf, umin,
                                                                                             errbit, rule2_factor)
                mdf_r0verilog = DC_format_funcs.reformat_syn(r0file_path, r0file)
                mdf_new_name = '{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}_r0.v'.format(bench, kd, kf, umin, errbit, rule2_factor, ratio)
                se_list, so_list, reencode_dffs = functions.re_encode_states_final(mdf_r0verilog, mdf_new_name)

                key = '{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}'.format(bench, kd, kf, umin, errbit, rule2_factor)
                se_so_dict[key] = [se_list, so_list]
                dff_dict[key] = reencode_dffs
                # print(se_list, len(se_list))
                # print(so_list, len(so_list))
            if kd != 0 and kf != 0 and umin != 0 and ratio != 0:
                se_so_key = '{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}'.format(bench, kd, kf, umin, errbit, rule2_factor)
                se_list = se_so_dict[se_so_key][0]
                so_list = se_so_dict[se_so_key][1]
                reencode_dffs = dff_dict[se_so_key]

                se_list, so_list, ratio = circuitfuncs.get_se_so_lists(se_list, so_list, ratio)

                # fwtbench.write('\t'.join(benchinfo[i]) + '\n')
                fwtbench.write('{}\t{}\t{}\t{}\t{}\t{}\t{}\n'.format(bench, kd, kf, umin, errbit, rule2_factor, ratio))
                t1 = time.process_time()
                functions.write_reencode_files(folder, bench, kd, kf, umin, errbit, rule2_factor, ratio, se_list, so_list, reencode_dffs)
                t2 = time.process_time()
                print('complete: {0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}_r{6}, time: {7}'.format(bench, kd, kf, umin, errbit, rule2_factor, ratio, t2 - t1))

if __name__ == '__main__':
    genDC_renencoding()




