module uni_shift_reg(clr,clk,sel,in,out);
input clr,clk;
input[1:0] sel;
input[3:0] in;
output reg[3:0] out;

always@(posedge clk)
begin
  if(clr)
  out=4'b0000;
  else
  begin
  case(sel)
  2'b00:out=out;
  2'b01:out={in[0],in[3:1]};
  2'b10:out={in[2:0],in[3]};
  2'b11:out=in;
  endcase
  end
end
endmodule