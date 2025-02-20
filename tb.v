`timescale 1ns/10ps
`define PEROID 10
module counter_8bit_tb ;
        reg clk;
        reg rst;
        wire [7:0] counter;
        wire [15:0] sine_out;

        counter_8bit dut (
                .rst(rst),
                .clk(clk),
                .sine_out(sine_out)
        );
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
        initial begin
                 $dumpfile("wave.vcd");
                 $dumpvars (0, counter_8bit_tb);
                 clk = 0;
                 forever #(`PEROID/2) clk = ~clk;
        end
        initial begin
                rst = 1;
                #50;
                rst = 0;
                #10000;
                $finish();
        end
