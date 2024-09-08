class fa_bfm;
	fa_tx tx;
	virtual fa_interface vif;

	function new();
		vif = top.pif;
	endfunction

	task run();
		$display("Inside bfm class");
		forever begin
			tx = new();
			gen2bfm.get(tx);
// 			$display("Tx has been get from mailbox in bfm");
// 			$display("Driving tx to interface");
			drive_tx(tx);
//         	tx.print("BUS FUNCTIONAL MODEL");
          	fa_common::bfm_count++;
//          $display("bfm_count=%0d", fa_common::bfm_count);
		end
	endtask

	task drive_tx(fa_tx tx);
		vif.a			= this.tx.a;
		vif.b 			= this.tx.b;
		vif.cin			= this.tx.cin;
      	#5;
		this.tx.sum		= vif.sum;
		this.tx.carry	= vif.carry;
	endtask
endclass
