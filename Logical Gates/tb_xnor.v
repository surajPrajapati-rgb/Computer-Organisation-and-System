`include "xnor.v"

module tb_xnor();

reg a,b;
wire c;
xnor_gate f1(a,b,c);

initial begin
    $monitor("input=%b, input=%b, output=%b\n", a, b, c);
    #2 a=1'b0; b=1'b0;
    #2 a=1'b1; b=1'b0;
    #2 a=1'b0; b=1'b1;
    #2 a=1'b1; b=1'b1;
end

initial begin
 $dumpfile("out.vcd");
 $dumpvars;
 #10 $finish;
end

endmodule