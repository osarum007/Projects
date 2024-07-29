`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2023 20:24:51
// Design Name: 
// Module Name: vga_interface
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


module vga_interface (
    input wire clk,
    input wire [9:0] ball_x,
    input wire [9:0] ball_y,
    input wire [9:0] paddle_x,
    input wire [9:0] paddle_y,
    output wire hsync,
    output wire vsync,
    output wire [2:0] red,
    output wire [2:0] green,
    output wire [2:0] blue
);

    // Constants
    localparam SCREEN_WIDTH = 10'd640;
    localparam SCREEN_HEIGHT = 10'd480;
    localparam PADDLE_WIDTH = 10'd50;
    localparam PADDLE_HEIGHT = 10'd10;
    localparam BALL_SIZE = 10'd10;
    
    // VGA timing parameters for 640x480 @ 60 Hz
    localparam H_SYNC_CYCLES = 10'd96;
    localparam H_BACK_PORCH = 10'd48;
    localparam H_ACTIVE = SCREEN_WIDTH;
    localparam H_FRONT_PORCH = 10'd16;
    localparam V_SYNC_CYCLES = 10'd2;
    localparam V_BACK_PORCH = 10'd33;
    localparam V_ACTIVE = SCREEN_HEIGHT;
    localparam V_FRONT_PORCH = 10'd10;
    localparam H_MAX = H_SYNC_CYCLES + H_BACK_PORCH + H_ACTIVE + H_FRONT_PORCH - 1;
    localparam V_MAX = V_SYNC_CYCLES + V_BACK_PORCH + V_ACTIVE + V_FRONT_PORCH - 1;

    // VGA signals
    reg [9:0] h_count = 0;
    reg [9:0] v_count = 0;
    reg hsync_n = 0;
    reg vsync_n = 0;
    
    // VGA sync generation
    always @(posedge clk) begin
        if (h_count == H_MAX) begin
            h_count <= 0;
            if (v_count == V_MAX) begin
                v_count <= 0;
            end else begin
                v_count <= v_count + 1;
            end
        end else begin
            h_count <= h_count + 1;
        end

        hsync_n <= (h_count < (H_SYNC_CYCLES + H_BACK_PORCH)) ? 1 : 0;
        vsync_n <= (v_count < (V_SYNC_CYCLES + V_BACK_PORCH)) ? 1 : 0;
    end

    assign hsync = ~hsync_n;
    assign vsync = ~vsync_n;

    // Pixel generation
    wire is_ball = (v_count >= ball_y) && (v_count < (ball_y + BALL_SIZE)) &&
                   (h_count >= ball_x) && (h_count < (ball_x + BALL_SIZE));
    wire is_paddle = (v_count >= paddle_y) && (v_count < (paddle_y + PADDLE_HEIGHT)) &&
                     (h_count >= paddle_x) && (h_count < (paddle_x + PADDLE_WIDTH));
    
    assign red = (is_ball || is_paddle) ? 3'b111 : 3'b000;
    assign green = (is_ball || is_paddle) ? 3'b111 : 3'b000;
    assign blue = (is_ball || is_paddle) ? 3'b111 : 3'b000;

endmodule

