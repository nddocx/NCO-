module counter_8bit (
        input wire  rst,
        input wire  clk,
        input csb0,
        input wire [7:0] addr0,
        input wire [15:0] din0,
        output reg [15:0] sine_out
);
        reg [7:0] tcount;
        wire [15:0] sine_out_temp;
/*      `include "sine_table.vh"

        assign sine_out = sine_table[tcount];
*/
        ram256x16 mem_i(
                // PORT 0: W
        .clk0(clk),.csb0(csb0),.addr0(addr0),.din0(din0),
                // PORT 1: R
        .clk1(clk),.csb1(1'b0),.addr1(tcount),.dout1(sine_out_temp)
        );
        always @(posedge clk or posedge rst) begin
                if(rst) begin
                        tcount <= 0;
                        sine_out <= 0;
                end
                else begin
                        tcount <= tcount + 1;
                        sine_out <= sine_out_temp;
                end
        end

endmodule
