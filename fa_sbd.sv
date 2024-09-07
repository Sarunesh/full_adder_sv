class fa_sbd;
	fa_tx tx;

	function new();
	endfunction

	task run;
		$display("Inside scoreboard class");
		tx = new();
 		tx.print("SCOREBOARD");
		mon2sbd.get(tx);
		$display("Tx has been get from mailbox in scoreboard");
	endtask
endclass
