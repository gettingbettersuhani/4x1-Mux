`timescale 1ns / 1ps

module Testbench_1;
reg a_tb,b_tb,c_tb,d_tb;
reg[1:0] sel_tb;
wire y_tb;
Design_1 uut(.a(a_tb), .b(b_tb), .c(c_tb), .d(d_tb), .sel(sel_tb), .y(y_tb));
initial
begin
$monitor("Time=%0t  a=%b  b=%b  c=%b  d=%b  sel=%b || y=%b",$time,a_tb,b_tb,c_tb,d_tb,sel_tb,y_tb);
a_tb=0;b_tb=0;c_tb=0;d_tb=0; sel_tb=2'b00; #5;

a_tb = 0; b_tb = 1; c_tb = 0; d_tb = 1;
#5 sel_tb = 2'b00; // expect y = a = 0
#5 sel_tb = 2'b01; // expect y = b = 1
#5 sel_tb = 2'b10; // expect y = c = 0
#5 sel_tb = 2'b11; // expect y = d = 1

#5 a_tb = 1; b_tb = 0; c_tb = 1; d_tb = 0;
#5 sel_tb = 2'b00; // expect y = 1
#5 sel_tb = 2'b01; // expect y = 0
#5 sel_tb = 2'b10; // expect y = 1
#5 sel_tb = 2'b11; // expect y = 0

#5 a_tb = 1'bx; b_tb = 1; c_tb = 0; d_tb = 0; 
#5 sel_tb = 2'b00;
#5 sel_tb = 2'b01; // y = b = 1
$finish;
end
endmodule
