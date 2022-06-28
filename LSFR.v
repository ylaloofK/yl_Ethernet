module LSFR(
    input clk,
    input rst_n,
    output out
);

reg [4:0] shift_reg;

assign out = shift_reg[0];

always@(posedge clk or negedge rst_n)
begin
    if(!rst_n)
    shift_reg <= 5'b11110;
    else
    begin
        shift_reg[4] <= shift_reg[0] ^ 1'b0;
        shift_reg[3] <= shift_regq[4];
        shift_reg[2] <= shift_reg[3] ^ shift_reg[0];
        shift_reg[1] <= shift_reg[2];
        shift_reg[0] <= shift_reg[1];
    end
end

endmodule