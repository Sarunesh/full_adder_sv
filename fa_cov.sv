class fa_cov;
	fa_tx tx;
	function new();
	endfunction

	task run();
		$display("Inside coverage class");
		tx = new();
 		tx.print("COVERAGE");
		mon2cov.get(tx);
		$display("Tx has been get from mailbox in coverage");
	endtask
endclass
