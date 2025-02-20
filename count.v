module counter_8bit (
        input wire  rst,
        input wire  clk,
        output [15:0] sine_out
);
        reg [7:0] tcount;
        `include "sine_table.vh"

        assign sine_out = sine_table[tcount];
        always @(posedge clk or posedge rst) begin
                if(rst) begin
                        tcount <= 0;
                end
                else begin
                        tcount <= tcount + 1;
                end
        end

endmodule
