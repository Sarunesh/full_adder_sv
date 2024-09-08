class fa_cov;
	fa_tx tx;
  
  	covergroup fa_cg;
		A_VAL:coverpoint tx.a{
			bins A_ZERO={1'b0};
			bins A_ONE={1'b1};
		}
		B_VAL:coverpoint tx.b{
			bins B_ZERO={1'b0};
			bins B_ONE={1'b1};
		}
		C_VAL:coverpoint tx.cin{
			bins C_ZERO={1'b0};
			bins C_ONE={1'b1};
		}
		A_VAL_X_B_VAL: cross A_VAL, B_VAL;
		A_VAL_X_C_VAL: cross A_VAL, C_VAL;
		C_VAL_X_B_VAL: cross C_VAL, B_VAL;
		A_VAL_X_B_VAL_X_C_VAL: cross A_VAL, B_VAL, C_VAL;
	endgroup
  
	function new();
      fa_cg = new();
	endfunction

	task run();
		$display("Inside coverage class");
		tx = new();
// 		tx.print("COVERAGE");
		mon2cov.get(tx);
// 		$display("Tx has been get from mailbox in coverage");
      	fa_cg.sample();
	endtask
endclass
