This Verilog project demonstrates basic logic gate operations using both dataflow modeling and gate-level modeling. The module basic_gates_operation implements AND, OR, NOR, NAND, XOR, and XNOR gates, while the testbench tb_basic_gates_operation verifies its functionality.

Project Structure

   ├── basic_gates_operation.v  # Verilog module implementing logic gates
   ├── tb_basic_gates_operation.v  # Testbench for verification
   ├── README.md  # Project documentation

Module Description

basic_gates_operation.v

This module takes two single-bit inputs (a, b) and produces:

4-bit cout output using dataflow modeling

4-bit cgate output using gate-level modeling

Functionality

Index

Operation

Dataflow (cout)

Gate-Level (cgate)
 
we initilaize a and b as input and cgate1,cgate2,cgate3,cgate4 ,cout1,cout2,cout3,cout4 as output;

Testbench Description

tb_basic_gates_operation.v

This testbench:

Initializes a and b

Iterates through all possible combinations (00, 01, 10, 11)

Uses $monitor to display results

Ends the simulation using $stop

Simulation Instructions

Using ModelSim

Open ModelSim and create a new project.

Add basic_gates_operation.v and tb_basic_gates_operation.v.

Compile both files.

Run the simulation.

Observe the waveform and console output.

Using Xilinx Vivado

Create a new Verilog Project in Vivado.

Add basic_gates_operation.v and tb_basic_gates_operation.v.

Synthesize the design.

Open Simulation → Run Behavioral Simulation.

View the simulation waveforms.

Expected Output

Time = 0  | a = 0, b = 0 | cout = 0001 | cgate = 1101
Time = 10 | a = 0, b = 1 | cout = 0110 | cgate = 1000
Time = 20 | a = 1, b = 0 | cout = 0110 | cgate = 1000
Time = 30 | a = 1, b = 1 | cout = 1001 | cgate = 0110

Future Improvements

Extend to multi-bit operations.

Add sequential logic (flip-flops, latches).

Implement a GUI-based wavefor
