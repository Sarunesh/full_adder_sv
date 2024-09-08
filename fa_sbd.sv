class fa_sbd;
	fa_tx tx, tx_t;
	// Constructor
	function new();
	endfunction

	// Run task
	task run;
      	$display("Inside the fa_sbd class");
      	repeat(fa_common::count)begin
		tx   = new();
      	tx_t = new();
		//tx_t = new tx;
	
		mon2sbd.get(tx);
      	tx_t.copy(tx);
		tx.print("SCOREBOARD");
      
		{tx_t.carry, tx_t.sum} = tx_t.a + tx_t.b + tx_t.cin;
		
		if(tx_t.sum == tx.sum)
			fa_common::sum_match++;
		else
			fa_common::sum_mismatch++;

		if(tx_t.carry == tx.carry)
			fa_common::carry_match++;
		else
			fa_common::carry_mismatch++;
        end
	endtask
endclass
