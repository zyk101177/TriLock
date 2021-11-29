import xlrd
import xlwt
from xlutils.copy import copy
import os
import shutil
import numpy as np

# ================================.=================================== #
# write to .xls
# ================================.=================================== #
def gen_test_xls(table):
    title = ['bench', 'inbit', 'outbit', 'td', 'tf', 'umin', 'errbit', 'fcf', 'DFF_percentage', 'Est. dips', 'Est. FC', 'power', 'area',
             'delay', 'overhead_p', 'overhead_a', 'overhead_d', 'runtime', 'DIPs', 'FC']
    bench = ['s27', 's526', 's1488', 's9234', 's38584', 's15850', 'b03', 'b10', 'b11', 'b12', 'b15']
    in_out = {'s27in': 4, 's27out': 1, 's9234in': 19, 's9234out': 22, 's38584in': 12, 's38584out': 278, 's15850in': 12,
              's15850out': 87, 's526in': 3, 's526out': 6, 's1488in': 8, 's1488out': 19, 'b03in': 4, 'b03out': 4,'b10in': 11, 'b10out': 6, 'b11in': 7, 'b11out': 6,
              'b12in': 5, 'b12out': 6, 'b15in': 36, 'b15out': 70, 'firin': 32, 'firout': 32 }
    # kd_range = range(2, 11, 2)
    # kf_range = range(1, 6, 2)
    # errbit_range = range(2, 7, 2)
    # fcf_range = range(2, 10, 2)
    # dffratio_range=range(20, 100, 25)

    # bench = ['s526']
    kd_range = [4]
    kf_range = [3]
    errbit_range = range(2,10,2)
    fcf_range = [2]
    dffratio_range= range(20, 100, 25)


    for i in range(len(title)):
        table.write(0, i, title[i])

    i = 1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        table.write(i, 0, circuit)
        table.write(i, 1, inbit)
        table.write(i, 2, outbit)
        table.write(i, 3, 0)
        table.write(i, 4, 0)
        table.write(i, 5, 0)
        table.write(i, 6, 0)
        table.write(i, 7, 0)
        table.write(i, 8, 0)
        table.write(i, 9, 1)
        i = i + 1

    i = 10
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        for kd in kd_range:
            for kf in kf_range:
                for errbit in errbit_range:
                    for fcf in fcf_range:
                        for ratio in dffratio_range:
                            table.write(i, 0, circuit)
                            table.write(i, 1, inbit)
                            table.write(i, 2, outbit)
                            table.write(i, 3, kd)
                            table.write(i, 4, kf)
                            table.write(i, 5, 2 * kd + kf)
                            table.write(i, 6, errbit)
                            table.write(i, 7, fcf)
                            table.write(i, 8, ratio)
                            table.write(i, 9, pow(2, kd * inbit))
                            if fcf != 0:
                                table.write(i, 10, fcf/100)
                            else:
                                table.write(i, 10, 1/pow(2, kd*inbit))
                            i = i + 1

    return table

def gen_test_xls_td(table):
    title = ['bench', 'inbit', 'outbit', 'td', 'tf', 'umin', 'errbit', 'fcf', 'DFF_percentage', 'Est. dips', 'Est. FC', 'power', 'area',
             'delay', 'overhead_p', 'overhead_a', 'overhead_d', 'runtime', 'DIPs', 'FC']
    bench = ['s9234', 's38584', 's15850', 's526', 's344', 's386', 's1196', 's1423', 's5378', 's13207', 's35932', 's38417', 's1488', 'b03', 'b04', 'b11', 'b10', 'b12', 'b14', 'b15', 'b18', 'b20']
    in_out = {'s27in': 4, 's27out': 1, 's9234in': 19, 's9234out': 22, 's38584in': 12, 's38584out': 278, 's15850in': 14,
              's15850out': 87, 's526in': 3, 's526out': 6, 's1488in': 8, 's1488out': 19, 'b03in': 4, 'b03out': 4,'b10in': 11, 'b10out': 6, 'b11in': 7, 'b11out': 6,
              'b12in': 5, 'b12out': 6, 'b15in': 36, 'b15out': 70, 'b04in': 11, 'b04out': 8, 'b14in': 32, 'b14out': 54, 'b18in': 37, 'b18out': 23, 'b20in': 32, 'b20out': 22,
              's344in': 9, 's344out': 11, 's386in': 7, 's386out': 7, 's1196in': 14, 's1196out': 14, 's1423in': 17, 's1423out': 5,
              's5378in': 35, 's5378out': 49, 's13207in': 62, 's13207out': 152, 's35932in': 35, 's35932out': 320, 's38417in': 28, 's38417out': 106, 'firin': 32, 'firout': 32, 'iirin': 32, 'iirout': 32}
    # kd_range = range(1, 7)
    kd_range = range(1,3)
    # kf_range = range(1, 6, 2)
    # errbit_range = range(2, 7, 2)
    # fcf_range = range(2, 10, 2)
    # dffratio_range=range(20, 100, 25)

    bench = ['s9234', 's38584', 's15850', 's35932', 's38417', 'b12', 'b14', 'b15', 'b18', 'b20', 'iir', 'fir']
    # bench = ['iir', 'fir']
    kf_range = [1]
    errbit_range = [5]
    fcf_range = [60]
    # dffratio_range = range(0, 11, 10)
    dffratio_range = [0, 10]

    for i in range(len(title)):
        table.write(0, i, title[i])

    i = 1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        table.write(i, 0, circuit)
        table.write(i, 1, inbit)
        table.write(i, 2, outbit)
        table.write(i, 3, 0)
        table.write(i, 4, 0)
        table.write(i, 5, 0)
        table.write(i, 6, 0)
        table.write(i, 7, 0)
        table.write(i, 8, 0)
        table.write(i, 9, 1)
        i = i + 1

    i = len(bench)+1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        for kd in kd_range:
            for kf in kf_range:
                for errbit in errbit_range:
                    for fcf in fcf_range:
                        for ratio in dffratio_range:
                            table.write(i, 0, circuit)
                            table.write(i, 1, inbit)
                            table.write(i, 2, outbit)
                            table.write(i, 3, kd)
                            table.write(i, 4, kf)
                            table.write(i, 5, 2 * kd + kf)
                            table.write(i, 6, errbit)
                            table.write(i, 7, fcf)
                            table.write(i, 8, ratio)
                            table.write(i, 9, pow(2, kd * inbit))
                            if fcf != 0:
                                table.write(i, 10, fcf/100)
                            else:
                                table.write(i, 10, 1/pow(2, kd*inbit))
                            i = i + 1

    return table

def gen_test_xls_fcf(table):
    title = ['bench', 'inbit', 'outbit', 'td', 'tf', 'umin', 'errbit', 'fcf', 'DFF_percentage', 'Est. dips', 'Est. FC', 'power', 'area',
             'delay', 'overhead_p', 'overhead_a', 'overhead_d', 'runtime', 'DIPs', 'FC']
    # bench = ['s9234', 's38584', 's15850', 's526', 's344', 's386', 's1196', 's1423', 's5378', 's13207', 's35932', 's38417',
    #          's1488', 'b03', 'b04', 'b11', 'b10', 'b12', 'b14', 'b15', 'b18', 'b20']
    in_out = {'s27in': 4, 's27out': 1, 's9234in': 19, 's9234out': 22, 's38584in': 12, 's38584out': 278, 's15850in': 14,
              's15850out': 87, 's526in': 3, 's526out': 6, 's1488in': 8, 's1488out': 19, 'b03in': 4, 'b03out': 4,'b10in': 11, 'b10out': 6, 'b11in': 7, 'b11out': 6,
              'b12in': 5, 'b12out': 6, 'b15in': 36, 'b15out': 70, 'b04in': 11, 'b04out': 8, 'b14in': 32, 'b14out': 54, 'b18in': 37, 'b18out': 23, 'b20in': 32, 'b20out': 22,
              's344in': 9, 's344out': 11, 's386in': 7, 's386out': 7, 's1196in': 14, 's1196out': 14, 's1423in': 17, 's1423out': 5,
              's5378in': 35, 's5378out': 49, 's13207in': 62, 's13207out': 152, 's35932in': 35, 's35932out': 320, 's38417in': 28, 's38417out': 106, 'firin': 32, 'firout': 32, 'iirin': 32, 'iirout': 32}
    kd_range = [3]
    # kf_range = range(1, 6, 2)
    # errbit_range = range(2, 7, 2)
    # fcf_range = range(2, 10, 2)
    # dffratio_range=range(20, 100, 25)

    bench = ['s9234', 's38584', 's15850', 's35932', 's38417', 'b12', 'b14', 'b15', 'b18', 'b20', 'iir', 'fir']
    # bench = ['iir', 'fir']
    kf_range = range(1,4)
    errbit_range = [5]
    fcf_range = range(0, 100, 30)
    # dffratio_range = range(0, 11, 10)
    dffratio_range = [0, 10]

    for i in range(len(title)):
        table.write(0, i, title[i])

    i = 1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        table.write(i, 0, circuit)
        table.write(i, 1, inbit)
        table.write(i, 2, outbit)
        table.write(i, 3, 0)
        table.write(i, 4, 0)
        table.write(i, 5, 0)
        table.write(i, 6, 0)
        table.write(i, 7, 0)
        table.write(i, 8, 0)
        table.write(i, 9, 1)
        i = i + 1

    i = len(bench)+1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        for kd in kd_range:
            for kf in kf_range:
                for errbit in errbit_range:
                    for fcf in fcf_range:
                        for ratio in dffratio_range:
                            table.write(i, 0, circuit)
                            table.write(i, 1, inbit)
                            table.write(i, 2, outbit)
                            table.write(i, 3, kd)
                            table.write(i, 4, kf)
                            table.write(i, 5, 2 * kd + kf)
                            table.write(i, 6, errbit)
                            table.write(i, 7, fcf)
                            table.write(i, 8, ratio)
                            table.write(i, 9, pow(2, kd * inbit))
                            if fcf != 0:
                                table.write(i, 10, fcf/100)
                            else:
                                table.write(i, 10, 1/pow(2, kd*inbit))
                            i = i + 1

    return table


def gen_test_xls_DFFper(table):
    title = ['bench', 'inbit', 'outbit', 'td', 'tf', 'umin', 'errbit', 'fcf', 'DFF_percentage', 'Est. dips', 'Est. FC', 'power', 'area',
             'delay', 'overhead_p', 'overhead_a', 'overhead_d', 'runtime', 'DIPs', 'FC']
    # bench = ['s9234', 's38584', 's15850', 's526', 's344', 's386', 's1196', 's1423', 's5378', 's13207', 's35932', 's38417', 's1488', 'b03', 'b04', 'b11', 'b10', 'b12', 'b14', 'b15', 'b18', 'b20']
    bench = ['s9234', 's38584', 's15850', 's35932', 's38417', 'b12', 'b14', 'b15', 'b18', 'b20', 'iir', 'fir']
    # bench = ['iir', 'fir']
    in_out = {'s27in': 4, 's27out': 1, 's9234in': 19, 's9234out': 22, 's38584in': 12, 's38584out': 278, 's15850in': 14,
              's15850out': 87, 's526in': 3, 's526out': 6, 's1488in': 8, 's1488out': 19, 'b03in': 4, 'b03out': 4,'b10in': 11, 'b10out': 6, 'b11in': 7, 'b11out': 6,
              'b12in': 5, 'b12out': 6, 'b15in': 36, 'b15out': 70, 'b04in': 11, 'b04out': 8, 'b14in': 32, 'b14out': 54, 'b18in': 37, 'b18out': 23, 'b20in': 32, 'b20out': 22,
              's344in': 9, 's344out': 11, 's386in': 7, 's386out': 7, 's1196in': 14, 's1196out': 14, 's1423in': 17, 's1423out': 5,
              's5378in': 35, 's5378out': 49, 's13207in': 62, 's13207out': 152, 's35932in': 35, 's35932out': 320, 's38417in': 28, 's38417out': 106, 'firin': 32, 'firout': 32, 'iirin': 32, 'iirout': 32}
    kd_range = [4]
    # kf_range = range(1, 6, 2)
    # errbit_range = range(2, 7, 2)
    # fcf_range = range(2, 10, 2)
    # dffratio_range=range(20, 100, 25)

    kf_range = [1]
    errbit_range = [5]
    fcf_range = [60]
    dffratio_range = range(0, 40, 5)
    # dffratio_range = [100]


    for i in range(len(title)):
        table.write(0, i, title[i])

    i = 1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        table.write(i, 0, circuit)
        table.write(i, 1, inbit)
        table.write(i, 2, outbit)
        table.write(i, 3, 0)
        table.write(i, 4, 0)
        table.write(i, 5, 0)
        table.write(i, 6, 0)
        table.write(i, 7, 0)
        table.write(i, 8, 0)
        table.write(i, 9, 1)
        i = i + 1

    i=len(bench)+1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        for kd in kd_range:
            for kf in kf_range:
                for errbit in errbit_range:
                    for fcf in fcf_range:
                        for ratio in dffratio_range:
                            table.write(i, 0, circuit)
                            table.write(i, 1, inbit)
                            table.write(i, 2, outbit)
                            table.write(i, 3, kd)
                            table.write(i, 4, kf)
                            table.write(i, 5, 2 * kd + kf)
                            table.write(i, 6, errbit)
                            table.write(i, 7, fcf)
                            table.write(i, 8, ratio)
                            table.write(i, 9, pow(2, kd * inbit))
                            if fcf != 0:
                                table.write(i, 10, fcf/100)
                            else:
                                table.write(i, 10, 1/pow(2, kd*inbit))
                            i = i + 1

    return table


def gen_test_xls_overhead(table):
    title = ['bench', 'inbit', 'outbit', 'td', 'tf', 'umin', 'errbit', 'fcf', 'DFF_percentage', 'Est. dips', 'Est. FC', 'power', 'area',
             'delay', 'overhead_p', 'overhead_a', 'overhead_d', 'runtime', 'DIPs', 'FC']
    bench = ['s9234', 's38584', 's15850', 's526', 's1488', 'b03', 'b11', 'b10', 'b12', 'b15']
    in_out = {'s27in': 4, 's27out': 1, 's9234in': 19, 's9234out': 22, 's38584in': 12, 's38584out': 278, 's15850in': 14,
              's15850out': 87, 's526in': 3, 's526out': 6, 's1488in': 8, 's1488out': 19, 'b03in': 4, 'b03out': 4,'b10in': 11, 'b10out': 6, 'b11in': 7, 'b11out': 6,
              'b12in': 5, 'b12out': 6, 'b15in': 36, 'b15out': 70}


    results = [[100000, 30, 0], [200000, 60, 0], [500000, 90, 0]]
    kf = 2
    errbit = 5


    for i in range(len(title)):
        table.write(0, i, title[i])

    i = 1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        table.write(i, 0, circuit)
        table.write(i, 1, inbit)
        table.write(i, 2, outbit)
        table.write(i, 3, 0)
        table.write(i, 4, 0)
        table.write(i, 5, 0)
        table.write(i, 6, 0)
        table.write(i, 7, 0)
        table.write(i, 8, 0)
        table.write(i, 9, 1)
        i = i + 1

    i=len(bench)+1
    for circuit in bench:
        inbit = in_out[circuit + 'in']
        outbit = in_out[circuit + 'out']
        for result in results:
            kd = np.ceil(np.log2(result[0])/inbit)
            if kd == 1:
                kd = 2
            fcf = result[1]
            ratio = result[2]

            table.write(i, 0, circuit)
            table.write(i, 1, inbit)
            table.write(i, 2, outbit)
            table.write(i, 3, kd)
            table.write(i, 4, kf)
            table.write(i, 5, 2 * kd + kf)
            table.write(i, 6, errbit)
            table.write(i, 7, fcf)
            table.write(i, 8, ratio)
            table.write(i, 9, pow(2, kd * inbit))
            if fcf != 0:
                table.write(i, 10, fcf/100)
            else:
                table.write(i, 10, 1/pow(2, kd*inbit))
            i = i + 1

    return table

# ================================.=================================== #
# write to .txt from .xls
# ================================.=================================== #
def gen_bench_name_txt(table):
    n_rows = table.nrows
    bench = []
    kd = []
    kf = []
    umin = []
    errbit = []
    fcf = []
    ratio = []
    for i in range(1, n_rows):
        row = table.row(rowx=i)
        bench.append(row[0].value)
        kd.append(int(row[3].value))
        kf.append(int(row[4].value))
        umin.append(int(row[5].value))
        errbit.append(int(row[6].value))
        fcf.append(int(row[7].value))
        ratio.append(int(row[8].value))
    with open('./bench_names.txt', 'a') as fout:
        fout.write('bench\tkd\tkf\tumin\terrbit\trule2_factor\tratio\n')
        for i in range(0, n_rows - 1):
            fout.write(bench[i] + '\t' + str(kd[i]) + '\t' + str(kf[i]) + '\t' + str(umin[i])
                       + '\t' + str(errbit[i]) + '\t' + str(fcf[i]) + '\t' + str(ratio[i]) + '\n')
    return


# ================================.=================================== #
# extract power, area, delay
# ================================.=================================== #

def extract_power(file):
    with open(file, 'r') as fpower:
        report_power = fpower.readlines()
        power = report_power[-2].split()
        if power[0] == 'Total':
            if power[-1] == 'uW':
                power = power[-2]
            else:
                print('Check power unit!')
        else:
            print('Check power report!')

    return power


def extract_area(file):
    with open(file, 'r') as farea:
        report_area = farea.readlines()
        area = report_area[-3].split()
        if area[0:3] == ['Total', 'cell', 'area:']:
            area = area[-1]
        else:
            print('Check area report!')
    return area


def extract_timing(file):
    with open(file, 'r') as farea:
        report_timing = farea.readlines()
        for item in report_timing:
            line = item.split()
            if line[0:3] == ['data', 'arrival', 'time']:
                timing = line[-1]
                break
    return timing


def get_pad(prefix):
    powerfile = '{}.power'.format(prefix)
    areafile = '{}.area'.format(prefix)
    timingfile = '{}.timing'.format(prefix)
    power = extract_power(powerfile)
    area = extract_area(areafile)
    timing = extract_timing(timingfile)
    return power, area, timing


# ================================.=================================== #
# write power, area, delay to .xls
# ================================.=================================== #
def write_pad(read_table, worksheet):
    n_rows = read_table.nrows
    ori_pad={}
    for i in range(1, n_rows):
        row = read_table.row(rowx=i)
        bench = row[0].value
        kd = int(row[3].value)
        kf = int(row[4].value)
        umin = int(row[5].value)
        fcf = int(row[7].value)
        errbit = int(row[6].value)
        ratio = int(row[8].value)

        if kd == 0 and kf == 0 and umin == 0 and fcf == 0 and ratio==0:
            prefix = './reports/{}_ori'.format(bench)
            power, area, timing = get_pad(prefix)
            power = float(power)
            area = float(area)
            timing = float(timing)
            ori_pad[bench] = [power, area, timing]
            overhead_power = 0
            overhead_area = 0
            overhead_delay = 0
        else:
            prefix = './reports/{0}_kd{1}_kf{2}_umin{3}_errbit{4}_fcf{5}_r{6}'.format(bench, kd, kf, umin, errbit, fcf, ratio)
            # print(prefix)
            power, area, timing = get_pad(prefix)
            power = float(power)
            area = float(area)
            timing = float(timing)
            overhead_power = (power - ori_pad[bench][0])/ori_pad[bench][0]
            overhead_area = (area - ori_pad[bench][1])/ori_pad[bench][1]
            overhead_delay = (timing - ori_pad[bench][2])/ori_pad[bench][2]
        worksheet.write(i, 11, power)
        worksheet.write(i, 12, area)
        worksheet.write(i, 13, timing)
        worksheet.write(i, 14, overhead_power)
        worksheet.write(i, 15, overhead_area)
        worksheet.write(i, 16, overhead_delay)

    return worksheet


# ================================.=================================== #
# step 1: generate sunlock_results.xls and bench_name.txt
# step 2: generate verilogs
# step 3: DC
# step 4: extract reports
# step 5: plot overhead
# ================================.=================================== #

def gen_xls_and_txt():
    workbook = xlwt.Workbook()
    sheet = workbook.add_sheet('trilock_results')
    sheet = gen_test_xls(sheet)
    workbook.save('./trilock.xls')

    data = xlrd.open_workbook('./trilock.xls')
    table = data.sheets()[0]
    gen_bench_name_txt(table)

def write_to_xls():
    data = xlrd.open_workbook('./trilocka.xls')
    # table = data.sheets()[0]

    # for i in range(len(data.sheets())):
    for i in range(len(data.sheets())):
        data = xlrd.open_workbook('./trilock.xls')
        new_workbook = copy(data)
        new_worksheet = new_workbook.get_sheet(i)
        new_worksheet = write_pad(data.sheets()[i], new_worksheet)
        new_workbook.save('./trilock.xls')

def gen_xls_and_txt_seperate_sheet():
    if os.path.exists('./bench_names.txt'):
        os.remove('./bench_names.txt')

    workbook = xlwt.Workbook()
    sheet1 = workbook.add_sheet('dips')
    sheet1 = gen_test_xls_td(sheet1)
    sheet2 = workbook.add_sheet('fc')
    sheet2 = gen_test_xls_fcf(sheet2)
    sheet3 = workbook.add_sheet('DFFpersentage')
    sheet3 = gen_test_xls_DFFper(sheet3)
    # sheet4 = workbook.add_sheet('overhead')
    # sheet4 = gen_test_xls_overhead(sheet4)

    workbook.save('./trilock.xls')

    data = xlrd.open_workbook('./trilock.xls')

    for table in data.sheets():
        gen_bench_name_txt(table)

if __name__ == '__main__':
    gen_xls_and_txt_seperate_sheet()
    # write_to_xls()