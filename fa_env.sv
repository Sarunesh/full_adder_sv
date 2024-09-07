class fa_env;
	fa_agent agent;
	fa_sbd sbd;

	function new();
		agent	= new();
		sbd		= new();
	endfunction

	task run();
		$display("Inside environment class");
		agent.run();
		sbd.run();
	endtask
endclass

