`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: Gunavant
// 
// Create Date: 05.08.2023 06:47:25
// Design Name: 
// Module Name: piso
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


module piso(input clk,
            input [3:0]d,
            input si,
            input load_shiftb,
            output reg so);
            
      wire q1,q2,q3,q4;
      reg [3:0]temp = 4'b0;
      
      always @(posedge clk) begin
        if(load_shiftb) begin
            temp <= d;
        end
        else begin
            so <= temp[3];
            temp <= {temp[2:0], si};
       end
      end      
            
endmodule
