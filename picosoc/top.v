module top(
	input CLK_IN,
	input RST_N,
	output LED_R,
	output LED_B
);

reg [23:0] div;

always @(posedge CLK_IN)
    div <= div + 1'b1;

attosoc soc(
	.clk(div[20]),
	.resetn(RST_N),
	.led(LED_R)
);
endmodule
