module codertest();

	reg [2:0] data;
	reg en;
	wire [2:0] out;
	wire [7:0] decoder1_out;

	//----Code starts here: integrated by Robei-----
	initial begin
		data = 3'b000;
		en = 0;
		#1 data = 3'b000;
		en = 1;
		#1 data = 3'b001;
		#1 data = 3'b010;
		#1 data = 3'b011;
		#1 data = 3'b100;
		#1 data = 3'b101;
		#1 data = 3'b110;
		#1 data = 3'b111;
		#1 data = 3'b000;
		#1 data = 3'b001;
		#1 $finish;
	end
	
	
	
	
	initial begin
		$dumpfile ("D:/Robei_learn/new_learning/Robei_coder/codertest.vcd");
		$dumpvars;
	end
	//---Module instantiation---
	decoder decoder1(
		.din(data),
		.en(en),
		.out(decoder1_out));

	encoder encoder2(
		.x(decoder1_out),
		.en(en),
		.y(out));

endmodule    //codertest

