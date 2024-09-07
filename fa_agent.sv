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
		gen.run();
		bfm.run();
		mon.run();
		cov.run();
	endtask
endclass
