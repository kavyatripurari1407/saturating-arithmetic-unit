module saturating_adder (
    input [3:0] A,
    input [3:0] B,
    output reg [3:0] Y
);

reg [4:0] temp;

always @(*) begin
    temp = A + B;

    if(temp > 15)
        Y = 4'b1111;
    else
        Y = temp[3:0];
end

endmodule