`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 05.08.2023 07:18:50
// Design Name: 
// Module Name: tb_piso
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module tb_piso;
    reg clk;
    reg [3:0]d;
    reg si;
    reg load_shiftb;
    wire so; 
    
    piso DUT(.clk(clk),
             .d(d),
             .si(si),
             .load_shiftb(load_shiftb),
             .so(so)
             );
    
    initial begin
        clk = 0;
        si = 0;
        load_shiftb = 1;
        d = 4'b0001;
        #10
        load_shiftb = 0;
        d = 4'b0010;
        #10
        d = 4'b0101;
        #10
        d = 4'b1011;
        #10     
        d = 4'b0100;
        #15
        $stop;
    end
    
    always #5 clk = ~clk; 
        

endmodule
