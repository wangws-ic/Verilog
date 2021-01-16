`timescale 1ns/1ns
module andtest();

	reg p0;
	reg p1;
	wire p2;

	//----Code starts here: integrated by Robei-----
	initial begin
	p0=0;
	p1=0;
	#1
	p0=1;
	#1
	p1=1;
	#1
	p0=0;
	#1
	p1=0;
	#1
	$finish;
	end
	
	
	
	initial begin
		$dumpfile ("D:/Robei_learn/new_learning/Robei_andgate/andtest.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	andgate andgate1(
		.a(p0),
		.b(p1),
		.y(p2));

endmodule    //andtest

