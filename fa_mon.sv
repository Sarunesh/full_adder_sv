class fa_mon;
	fa_tx tx;
	virtual fa_interface vif;

	function new();
		vif = top.pif;
	endfunction

	task run();
		tx=new();
		$display("Inside monitor class");
		tx.print("MONITOR");
		mon2cov.put(tx);
		$display("Tx has been put into mon2cov mailbox from monitor");
		mon2sbd.put(tx);
		$display("Tx has been put into mon2sbd mailbox from monitor");
	endtask
endclass
