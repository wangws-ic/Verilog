module ALU16(
	A,
	B,
	cin,
	op,
	result,
	cout);

	//---Ports declearation: generated by Robei---
	input [15:0] A;
	input [15:0] B;
	input cin;
	input [3:0] op;
	output [15:0] result;
	output cout;

	wire [15:0] A;
	wire [15:0] B;
	wire cin;
	wire [3:0] op;
	wire [15:0] result;
	wire cout;
	wire [7:0] split1_B;
	wire [7:0] split2_B;
	wire [7:0] split1_C;
	wire [7:0] split2_C;
	wire [7:0] ALU4_R;
	wire [7:0] ALU3_R;
	wire ALU3_D;

	//----Code starts here: integrated by Robei-----
	
	
	
	
	//---Module instantiation---
	split split1(
		.A(A),
		.B(split1_B),
		.C(split1_C));

	split split2(
		.A(B),
		.B(split2_B),
		.C(split2_C));

	ALU ALU3(
		.A(split1_B),
		.B(split2_B),
		.op(op),
		.F(cin),
		.R(ALU3_R),
		.D(ALU3_D));

	ALU ALU4(
		.A(split1_C),
		.B(split2_C),
		.op(op),
		.F(ALU3_D),
		.R(ALU4_R),
		.D(cout));

	merge merge5(
		.A(ALU3_R),
		.B(ALU4_R),
		.C(result));

endmodule    //ALU16

