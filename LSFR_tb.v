`timescale 1ns / 1ps
module LSFR_Tb();

reg clk;
reg rst_n;
wire out;

LSFR u1(.clk(clk),.rst_n(rst_n),.out(out));

always #5 clk = ~clk;

initial
begin
clk = 0;
rst_n=1;

#4
rst_n = 0;
#25
rst_n = 1;
#40;
#1000
$stop;

end
endmodule

