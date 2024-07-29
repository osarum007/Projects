`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2023 20:22:46
// Design Name: 
// Module Name: top
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


module top (
    input wire clk,
    input wire reset,
    input wire left,
    input wire right,
    output wire hsync,
    output wire vsync,
    output wire [2:0] red,
    output wire [2:0] green,
    output wire [2:0] blue
);

    wire [9:0] ball_x;
    wire [9:0] ball_y;
    wire [9:0] paddle_x;
    wire [9:0] paddle_y;
    wire ball_xdir;
    wire ball_ydir;
    
    pong_game pong_game_inst (
        .clk(clk),
        .reset(reset),
        .left(left),
        .right(right),
        .ball_x(ball_x),
        .ball_y(ball_y),
        .paddle_x(paddle_x),
        .paddle_y(paddle_y),
        .ball_xdir(ball_xdir),
        .ball_ydir(ball_ydir)
    );
    
    vga_interface vga_interface_inst (
        .clk(clk),
        .ball_x(ball_x),
        .ball_y(ball_y),
        .paddle_x(paddle_x),
        .paddle_y(paddle_y),
        .hsync(hsync),
        .vsync(vsync),
        .red(red),
        .green(green),
        .blue(blue)
    );

endmodule
