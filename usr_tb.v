module uni_shift_reg_tb();
reg [3:0]in;
reg clk,clr;
reg [1:0]sel;
wire [3:0]out;
uni_shift_reg r(clr,clk,sel,in,out);

initial
begin
    $dumpfile("uni_shift_reg.vcd");
    $dumpvars(0,uni_shift_reg_tb);
  clk=0;
  clr=1;
end

always #5 clk=~clk;

initial
begin
in=4'b1011;
sel=2'b01;
clr=1'b0;
#20;

in=4'b1011;
sel=2'b10;
#20;

in=4'b1011;
sel=2'b11;
#20;

#20 $finish;
end
endmodule