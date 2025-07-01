`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/01/2025 04:03:17 PM
// Design Name: 
// Module Name: D_FIR
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


module D_FIR(

    input clk,
    input rst,
    input [7:0] x_in,
    output reg [15:0] y_out
);

    reg [7:0] x [0:3]; // Delay line (4 samples)
    wire [15:0] mul [0:3];

    // Coefficients: h[0]=1, h[1]=2, h[2]=3, h[3]=4
    assign mul[0] = x[0] * 4;
    assign mul[1] = x[1] * 3;
    assign mul[2] = x[2] * 2;
    assign mul[3] = x[3] * 1;

    always @(posedge clk or posedge rst) begin
        if (rst) begin
            x[0] <= 0; x[1] <= 0; x[2] <= 0; x[3] <= 0;
            y_out <= 0;
        end else begin
            // Shift the delay line
            x[3] <= x[2];
            x[2] <= x[1];
            x[1] <= x[0];
            x[0] <= x_in;

            // Compute output
            y_out <= mul[0] + mul[1] + mul[2] + mul[3];
        end
    end

endmodule

   
