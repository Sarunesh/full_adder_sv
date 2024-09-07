class fa_gen;
	fa_tx tx;
	function new();
	endfunction

	task run();
		$display("Inside generator class");
		tx = new();
		tx.print("GENERATOR");
		gen2bfm.put(tx);
		$display("Tx has been put into mailbox from generator");
	endtask
endclass
