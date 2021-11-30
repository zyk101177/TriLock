proc syn {bench design design_name} {
set clk_period 5;
set posedge 0.0;
set negedge [expr $clk_period * 0.5];

read_file ./$bench/$design_name/ -autoread -format verilog -top $design;
#read_file ./$bench/ -autoread -format verilog -top $ori;

current_design $design;
uniquify;
link;
create_clock -name "clk" -period $clk_period -waveform [list $posedge $negedge] [get_ports clk];
set_dont_touch_network clk ;
set_ideal_network clk ;
#set_clock_lantency -source 0.5 [get_clocks clk];
set_input_delay 1.0 -max -clock clk [remove_from_collection [all_inputs] [get_ports "clk"]];
set_output_delay 0 -clock clk [all_outputs];
check_design > reports/$design_name.check_design;

set_dont_use [get_lib_cells NangateOpenCellLibrary/*]

set_attribute [get_lib_cells NangateOpenCellLibrary/NAND2_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/AND2_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/NOR2_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/OR2_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/XOR2_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/XNOR2_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/INV_*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/BUF*] dont_use false

set_attribute [get_lib_cells NangateOpenCellLibrary/DFF*] dont_use false

set_host_options -max_cores 5

ungroup -all -flatten;
compile -exact_map -map_effort high -area_effort high -ungroup_all;
# write_file -xg_force_db -format db -hierarchy -out db/$design_name.db;
report_timing > reports/$design_name.timing;
report_area > reports/$design_name.area;
report_power > reports/$design_name.power;
change_names -rules verilog -hierarchy;
write -format verilog -hierarchy -out netlists/$design_name.syn.v;
# write_sdf sdf/$design_name.sdf;
remove_design -designs;
return
}

set fname "bench_names.txt"
set fid [open $fname r]
while {[gets $fid line] > -1} {
  foreach {bench kd kf u errbit fcf r} $line {
	if {$bench == "bench" && $kd == "kd" && $kf == "kf" && $u == "umin"} {
		continue
	} elseif {$kd == 0 && $kf == 0 && $u == 0} {
		set design_name ${bench}_ori
		set design ${bench}_ori
		set bench ori
	        puts "bench: $bench, design_name: $design_name, design: $design" 
		syn $bench $design $design_name	
	} else {
		set design ${bench}_enc
		set design_name ${bench}_kd${kd}_kf${kf}_umin${u}_errbit${errbit}_fcf${fcf}_r0
		puts "bench: $bench, design: $design, design_name: $design_name"
		syn $bench $design $design_name
		}	
  }
}
close $fid
