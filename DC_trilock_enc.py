#####################################################################
# SunLock - w/o state re-encode
# 1. generate behavioral verilog with SunLock parameters
# Author: Yuke Zhang
# Jun. 16 2021
#####################################################################
import os
import shutil
import functions
import time
# import extractDCreport


def genDC_main():
    # remove old DC folder
    if os.path.exists('./DC_noreencode'):
        shutil.rmtree('./DC_noreencode')
    if os.path.exists('./tb'):
        shutil.rmtree('./tb')

    # build DC files: reports, netlists, libs, setup.txt, run.tcl
    if not os.path.exists('./DC_noreencode/reports'):
        os.makedirs('./DC_noreencode/reports')
    if not os.path.exists('./DC_noreencode/netlists'):
        os.makedirs('./DC_noreencode/netlists')
    # if not os.path.exists('./DC/lib'):
    #     os.makedirs('./DC/lib')

    #shutil.copy('./DC_setup/setup.txt', './DC_noreencode/')
    shutil.copy('./DC_setup/run.tcl', './DC_noreencode/')
    shutil.copytree('./DC_setup/lib', './DC_noreencode/lib')
    shutil.copytree('./ori', './DC_noreencode/ori')
    # read bench info
    with open('bench_names.txt', 'r') as fbench:
        benchinfo = fbench.readlines()
        n_bench = len(benchinfo)
        for i in range(n_bench):
            benchinfo[i] = benchinfo[i].split()

    with open('./DC_noreencode/bench_names.txt', 'w') as fwtbench:
        for item in benchinfo:
            if item[6] == '0':
                fwtbench.write('\t'.join(item) + '\n')

    # write DC verilog files
    with open('./DC_noreencode/netlists/correct_key.txt', 'w') as frealkey:
        frealkey.write('bench\tkd\tkf\tumin\terrbit\tcorrect key \n')
        for i in range(1, n_bench):
            bench = benchinfo[i][0]
            kd = int(benchinfo[i][1])
            kf = int(benchinfo[i][2])
            umin = int(benchinfo[i][3])
            errbit = int(benchinfo[i][4])
            rule2_factor = int(benchinfo[i][5])
            r = int(benchinfo[i][6])

            functions.check_constraints(kd, kf, umin)

            if kd != 0 and kf != 0 and umin != 0 and r == 0:
                t1 = time.process_time()
                correct_key = functions.write_no_reencode_files(bench, kd, kf, umin, errbit, rule2_factor)
                t2 = time.process_time()
                print(bench, kd, kf, umin, rule2_factor, r, 'correct key:', correct_key, 'cpu time:', t2 - t1)
                frealkey.write(bench + '\t' + str(kd) + '\t' + str(kf) + '\t' + str(umin) + '\t' + str(errbit) + '\t' + str(
                    correct_key) + '\n')


if __name__ == '__main__':
    genDC_main()



