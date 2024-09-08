class fa_agent;
	fa_gen gen;
	fa_bfm bfm;
	fa_mon mon;
	fa_cov cov;

	function new();
		gen = new();
		bfm = new();
		mon = new();
		cov = new();
	endfunction

	task run();
		$display("Inside agent class");
		fork
			gen.run();
			bfm.run();
			#1 mon.run();
			#1 cov.run();
		join
	endtask
endclass
