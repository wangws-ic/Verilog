module alutest();

	reg [7:0] a;
	reg [7:0] b;
	reg [3:0] op;
	reg cin;
	wire [7:0] result;
	wire cout;

	//----Code starts here: integrated by Robei-----
	initial begin
		a=0;
		b=0;
		op=0;
		cin=0;
	#1
		a=3;
		b=1;
		op=0;
	#1	
		a=2;
		b=1;
		op=1;
	#1	
		a=255;
		b=0;
		op=2;
	#1
		a=5;
		b=6;
		op=3;
	#1
		a=128;
		b=128;
		op=4;
	#1
		a=4;
		b=5;
		op=5;
		cin=1;
	#1
		a=4;
		b=5;
		op=6;
	#1
		a=4;
		b=5;
		op=7;
	#1
		a=4;
		b=5;
		op=7;
	#1
		a=4;
		b=5;
		op=0;
	#1
		$finish;
	end
	
	initial begin
		$dumpfile ("D:/Robei_learn/new_learning/Robei_ALU/alutest.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	ALU ALU1(
		.A(a),
		.B(b),
		.op(op),
		.F(cin),
		.R(result),
		.D(cout));

endmodule    //alutest

