transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/ThreebyOneMux.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/reg_file.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/program_counter.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/pipeline_flush.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/MEMWB.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/instruction_parser.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/instruction_memory.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/imm_data_extractor.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/IFID.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/IDEX.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/hazard_detection_unit.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/ForwardingUnit.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/EXMEM.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/design.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/data_memory.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/control_unit.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/branching_unit.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/alu_control.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/alu_64bit.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/adder.sv}
vlog -sv -work work +incdir+E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V\ Pipelined\ Processor/RISC-V {E:/Verilog/RISC-V-Pipelined-Processor-main/RISC-V Pipelined Processor/RISC-V/2_1mux.sv}

