`timescale 1ns/1ns
module counter_test();

	reg clock;
	reg reset;
	reg enable;
	wire [3:0] result;

	//----Code starts here: integrated by Robei-----
	initial begin
		clock = 1;
		reset = 0;
		enable = 0;
		#5 reset = 1;
		#10 reset = 0;
		#10 enable = 1;
		#150 enable =0;
		#5 $finish;
	end
	always begin
		#5 clock = ~clock;
	end
	
	
	initial begin
		$dumpfile ("D:/Robei_learn/new_learning/Robei_counter/counter_test.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	counter counter1(
		.clock(clock),
		.reset(reset),
		.enable(enable),
		.count(result));

endmodule    //counter_test

