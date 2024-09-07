module top;
	reg rst;
	// Interface
	fa_interface pif(.rst(rst));

	// DUT
	full_adder dut(
					.rst	(pif.rst),
					.a		(pif.a),
					.b		(pif.b),
					.cin	(pif.cin),
					.sum	(pif.sum),
					.carry	(pif.carry)
					);
	
	fa_env env;

	initial begin
		rst=1;
		#5;
		rst=0;
		env = new();
		env.run();
	end
endmodule

