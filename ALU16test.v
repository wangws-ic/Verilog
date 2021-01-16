module ALU16test();

	reg [15:0] a;
	reg [15:0] b;
	reg [3:0] op;
	reg cin;
	wire [15:0] result;
	wire cout;

	//----Code starts here: integrated by Robei-----
	initial begin
		a=0;
		b=0;
		op=0;
		cin=0;
	#1
		a=24;
		b=35;
		op=0;
	#1
		a=56;
		b=18;
		op=1;
	#1
		a=96;
		b=80;
		op=2;
	#1
		a=51;
		b=26;
		op=3;
	#1
		a=128;
		b=128;
		op=4;
	#1
		a=64;
		b=15;
		op=5;
	#1
		a=74;
		b=35;
		op=6;
	#1
		a=24;
		b=75;
		op=7;
	#1
		a=24;
		b=55;
		op=0;
	#1
		$finish;
	end
	
	
	
	initial begin
		$dumpfile ("D:/Robei_learn/new_learning/Robei_ALU16/ALU16test.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	ALU16 ALU161(
		.A(a),
		.B(b),
		.cin(cin),
		.op(op),
		.result(result),
		.cout(cout));

endmodule    //ALU16test

