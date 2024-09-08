class fa_mon;
	fa_tx tx;
	virtual fa_interface vif;
// 	int mon_count;
	function new();
		vif = top.pif;
	endfunction

	task run();
		$display("Inside monitor class");
      	repeat(fa_common::count)begin
			tx = new();
			// Assigning vif to tx
			tx.a		= vif.a;
			tx.b		= vif.b;
			tx.cin		= vif.cin;
			tx.sum		= vif.sum;
			tx.carry	= vif.carry;

			tx.print("MONITOR");
			mon2cov.put(tx);
// 			$display("Tx has been put into mon2cov mailbox from monitor");
			mon2sbd.put(tx);
// 			$display("Tx has been put into mon2sbd mailbox from monitor");
//          $display("mon_count=%0d", ++mon_count);
          	#5;
		end
	endtask
endclass
