`include "not.v"

module tb_not;
  reg a;
  wire b;

  not_gate f1(
    a,
    b
  );

  initial begin
    $monitor("input=%b, output=%b\n", a, b);
    // Change the input signal after 2 time units
    #2 a = 1'b0;
    // Change the input signal again after 2 more time units
    #2 a = 1'b1;
    // Terminate the simulation after 2 more time units
    #2 $finish;
  end

  initial begin
    $dumpfile("out.vcd");
    $dumpvars;
    #5 $finish;
  end
endmodule


