# TriLock

This repo contains the source code for TriLock.

# Tool Dependency

The tool has been successfully tested on macOS Catalina and .

1. ``Python 3.6`` or higher version
2. `Design Compiler.` Other synthesis tools are open for test.
3. `Circuitgraph`(https://github.com/circuitgraph/circuitgraph)
4. All the tool dependencies required by the above tools.


# Encryption Flow

Before state re-encoding
1. Step 1: Prepare a `bench_names.txt` file.
2. Step 2: Run `python3 DC_trilock_enc.py`
3. Step 3: Enter the folder DC_noreencode and open a terminal there. Run the following commands:
        
        dc_shell
        source setup.txt
        source run.tcl

State re-encoding
4. Step 4: Copy the folder `./DC_noreencode/netlists` to `./netlists`
5. Step 5: Run `python3 DC_state_reencode.py`
6. Step 6: Enter the folder DC_reencode and open a termnal there. Run the following commands:
        
        dc_shell
        source setupt.txt
        source run_sr.tcl


# Sample Outputs

Before state re-encoding:

    s9234 1 1 3 60 0 correct key: ['11011011010', '10000001001'] cpu time: 0.004350000000000076
    s9234 2 1 5 60 0 correct key: ['11010000001', '01011111111', '01011100111'] cpu time: 0.0034240000000000936
    s38584 1 1 3 60 0 correct key: ['00100011000', '01110011100'] cpu time: 0.033876999999999935
    s38584 2 1 5 60 0 correct key: ['00011101001', '01011110011', '10111010000'] cpu time: 0.04881800000000003
    
State re-encoding:

    not enough state signals! n_selist: 7, n_solist: 7, ratio: 10
    set ratio to its max. value:  7
    complete: s9234_kd1_kf1_umin3_errbit5_fcf60_r7, time: 0.014961999999999698
    complete: s9234_kd2_kf1_umin5_errbit5_fcf60_r10, time: 0.013735999999999748
    complete: s38584_kd1_kf1_umin3_errbit5_fcf60_r10, time: 0.1388639999999981
    complete: s38584_kd2_kf1_umin5_errbit5_fcf60_r10, time: 0.12760800000000216
