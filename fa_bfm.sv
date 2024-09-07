class fa_bfm;
	fa_tx tx;
	virtual fa_interface vif;

	function new();
		vif = top.pif;
	endfunction

	task run();
		$display("Inside bfm class");
		tx = new();
		gen2bfm.get(tx);
		$display("Tx has been get from mailbox in bfm");
		$display("Driving tx to interface");
		drive_tx(tx);
    	tx.print("BUS FUNCTIONAL MODEL");
	endtask

	task drive_tx(fa_tx tx);
		vif.a			= this.tx.a;
		vif.b 			= this.tx.b;
		vif.cin			= this.tx.cin;
		this.tx.sum		= vif.sum;
		this.tx.carry	= vif.carry;
	endtask
endclass
