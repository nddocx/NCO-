`timescale 1ns/10ps
`define PEROID 10
module counter_8bit_tb ;
        reg clk;
        reg rst;
        wire [7:0] counter;
        wire [15:0] sine_out;
        reg csb0;
        reg [7:0] addr0;
        reg [15:0] din0;

        counter_8bit dut (
                .rst(rst),
                .clk(clk),
                .sine_out(sine_out),
                .csb0(csb0),
                .addr0(addr0),
                .din0(din0)
        );
`include "sine_table.vh"
/*
        include "sine_table.vh"
        function [15:0] sinef;
                input[7:0] angle;
                begin
                        sinef = $sin(2 * angle * $acos(-1)/256)*($pow(2,15)-1);
                        $display("%4h", sinef);
                end
        endfunction

        assign sine_out = sine_table[counter];
*/
        integer i;
        task mem_init;
                begin
                        i=0;
                        csb0 = 0;
                        repeat (256) begin
                                @(negedge clk);
                                addr0 = i;
                                din0 = sine_table[i];
                                i = i + 1;
                        end
                        @(negedge clk);
                        csb0 = 1;
                end
        endtask
        initial begin
                 $dumpfile("wave.vcd");
                 $dumpvars(0, counter_8bit_tb);
                // $readmemh("mem_file.dat", dut.mem_i.mem);
                 clk = 0;
                 forever #(`PEROID/2) clk = ~clk;
        end
        initial begin
                rst <= 1;
                csb0 = 1;
                i = 0;
                addr0 = 0;
                #50;
                rst <= 0;
                #50 mem_init();
                #10000;
                $finish();
        end
endmodule
