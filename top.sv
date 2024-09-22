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
  
  	initial begin
      #10;
      wait(fa_common::bfm_count==fa_common::gen_count);
      #10;
      $display("###########################################################################");
      if(fa_common::sum_match==fa_common::count && fa_common::sum_mismatch==0)
        $display("\tTEST PASSED FOR SUM:\tsum_match=%0d\tsum_mismatch=%0d", fa_common::sum_match, fa_common::sum_mismatch);
      else
        $display("\tTEST FAILED FOR SUM:\tsum_match=%0d\tsum_mismatch=%0d", fa_common::sum_match, fa_common::sum_mismatch);

	  if(fa_common::carry_match==fa_common::count && fa_common::carry_mismatch==0)
        $display("\tTEST PASSED FOR CARRY:\tcarry_match=%0d\tcarry_mismatch=%0d", fa_common::carry_match, fa_common::carry_mismatch);
      else
        $display("\tTEST FAILED FOR CARRY:\tcarry_match=%0d\tcarry_mismatch=%0d", fa_common::carry_match, fa_common::carry_mismatch);
      $display("###########################################################################");
      #1;
	  rst=1;
	  #5;
	  rst=0;
      $finish;
    end
endmodule
