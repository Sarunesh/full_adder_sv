class fa_gen;
	fa_tx tx;
	function new();
	endfunction

	task run();
		$display("Inside generator class");
		repeat(fa_common::count) begin
          	fa_common::gen_count=fa_common::count;
			tx = new();
          	if(!tx.randomize())
            	$display("### Failed to randomize ###");
			tx.print("GENERATOR");
			gen2bfm.put(tx);
// 			$display("Tx has been put into mailbox from generator");
		end
	endtask
endclass
