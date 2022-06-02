module problem1(
    input  logic a,b,c,
    output logic y
);

assign y = (a & b) | (a & ~c) | (~b & c);

endmodule 