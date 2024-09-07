class fa_tx;
	rand logic a;
	rand logic b;
	rand logic cin;
		 logic sum;
		 logic carry;
	
	function void print(input string name="fa_tx");
		$display("==============================================");
		$display("\tComponent name	= %0s", name);
		$display("\tValue of a	= %0b", this.a);
		$display("\tValue of b	= %0b", this.b);
		$display("\tValue of cin	= %0b", this.cin);
		$display("\tValue of sum	= %0b", this.sum);
		$display("\tValue of carry	= %0b", this.carry);
		$display("==============================================");
    endfunction
endclass
