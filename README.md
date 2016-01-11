#A single cycle CPU coded in Verilog. 
(not in working order)

Go to this link https://drive.google.com/file/d/0Bx3QURjcvASobDBfWDZmMk43Tzk1SkhMQVZVSy1KM19kaVU4/view?usp=sharing to view a schematic diagram of the CPU. 

##PC
The PC gives the address for the next instruction. On a rising clock edge (hence the single-cycle CPU), it outputs the next address it has stored. I emulated the clock with a button on the FPGA board, so I could control the speed of the program and single-step modules to debug them. 

##Adder
This is meant to increment the address from the PC, so it can fetch the next instruction. It increments the address by 4. Originally coded using full-adders, but it is more concise and readable to just use Verilog's '+' syntax. If I was going for completely faithful simulation, then I would use the full-adders. 

##Instruction memory
This is meant to simulate the physical memory or cache where instructions are stored. For purposes of simulation, I hardcoded instructions into it. It outputs the actual instruction as a function of the input address.

##Control unit 
The control unit takes in an instruction and parses it to output appropriate control signals. It does this primarily by analyzing the opcode (because most control signals are a product of the actual operation). It outputs which operation the ALU should do, whether or not the data to the ALU should come from register b or the imm_data (it sends the control signal to the ALU mux), the immediate data (for the branch mux), and if the operation is a branch or not (for the branch-and-gate). 

##Register File 
I modeled the 8 registers as arrays of 16 bits. It receives the two registers to be written to / that are being read from, some data, and the clock. It assigns the two register outputs according to the instruction, and then if the writing_to_reg signal is 1, it assigns the data to be written to the appropriate register. 


##ALU 
The ALU module acts as the primary arithmetic unit for the CPU. There are two operations: add and subtract (which are represented by control signals 0 and 1, respectively). In the case of a branch on equal, the ALU also outputs a "diff" signal which signals whether or not the two signals are equal. 


##Branch And Gate
This and gate is a part of the machinery that determines whether or not the PC should jump to an address or just increment it by 4. It outputs the control signal for the branch mux based on whether or not it is a branch signal (sent from the control unit in the signal im_branch_sig), and if the result from the ALU indicates that the two values are equal (because it is beq). 


##Branch mux 
This mux takes in the output of the branch and gate as its control signal, and the output from the PC Adder and imm_data from the control unit as its two inputs. If the branch signal from the and gate is positive, it selects the immediate data. If not, it selects the normally incremented address. 

#Putting it all together 
I started by coding each of these individual modules and unit testing them using the LEDs on the Basys FPGA board. Once I verified that all of the modules worked individually, I put them together in the cpu.v module. That module describes the diagram in the picture I linked (which would be better to look at than just the cpu.v module, if you haven't). The only two inputs to the cpu itself are the clock and a reset signal. The rest of the module is simply describing all of the wires that connect the module. 

And that's pretty much it! This isn't in working order right now, and I'm not exactly sure where the error is, but this was a very educational project, and was a great way to reinforce the concepts from my computer architecture class. 

Bonus picture of the Basys3 board and Vivado! 
https://drive.google.com/file/d/0B2gAnKvIhvEDSkVUUXVHbmZxaG9BOGRJalllaTBCNWtGNktV/view?usp=sharing

