`timescale 1ns/1ps

module ring_counter_tb;

reg clk;
reg reset;

wire [3:0] q;

ring_counter uut (
    .clk(clk),
    .reset(reset),
    .q(q)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    $display("Time\tReset\tCounter");

    $monitor("%0t\t%b\t%b",
             $time, reset, q);

    // Initial values
    clk = 0;
    reset = 1;

    #10;

    // Release reset
    reset = 0;

    #10;
    #10;
    #10;
    #10;
    #10;

    $finish;

end

endmodule