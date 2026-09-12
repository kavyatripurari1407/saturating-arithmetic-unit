module tb_saturating_adder;

reg [3:0] A, B;
wire [3:0] Y;

saturating_adder uut(A, B, Y);

initial begin
    $dumpfile("saturating.vcd");
    $dumpvars(0, tb_saturating_adder);

    A = 5; B = 3; #10;
    A = 10; B = 5; #10;
    A = 12; B = 7; #10;

    $finish;
end

endmodule