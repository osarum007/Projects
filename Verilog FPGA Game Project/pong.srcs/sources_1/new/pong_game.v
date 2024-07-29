`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.04.2023 20:23:47
// Design Name: 
// Module Name: pong_game
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


module pong_game (
    input wire clk,
    input wire reset,
    input wire left,
    input wire right,
    output reg [9:0] ball_x,
    output reg [9:0] ball_y,
    output reg [9:0] paddle_x,
    output reg [9:0] paddle_y,
    output reg ball_xdir,
    output reg ball_ydir
);

    // Constants
    localparam BALL_SPEED = 4'd2;
    localparam PADDLE_SPEED = 4'd5;
    localparam SCREEN_WIDTH = 10'd640;
    localparam SCREEN_HEIGHT = 10'd480;
    localparam PADDLE_WIDTH = 10'd50;
    localparam PADDLE_HEIGHT = 10'd10;
    localparam BALL_SIZE = 10'd10;

    // Internal variables
    reg [31:0] count = 0;
    reg [3:0] ball_speed_count = 0;
    reg [3:0] paddle_speed_count = 0;

    always @(posedge clk) begin
        if (reset) begin
            ball_x <= 10'd320;
            ball_y <= 10'd240;
            ball_xdir <= 1'b1;
            ball_ydir <= 1'b1;
            paddle_x <= 10'd295;
            paddle_y <= SCREEN_HEIGHT - PADDLE_HEIGHT - 10'd10;
            count <= 0;
            ball_speed_count <= 0;
            paddle_speed_count <= 0;
        end else begin
            count <= count + 1;
            
            // Ball movement
            if (count % BALL_SPEED == 0) begin
                ball_speed_count <= ball_speed_count + 1;
                if (ball_speed_count == BALL_SPEED) begin
                    ball_speed_count <= 0;
                    if (ball_xdir) begin
                        ball_x <= ball_x + BALL_SIZE;
                    end else begin
                        ball_x <= ball_x - BALL_SIZE;
                    end
                    
                    if (ball_ydir) begin
                        ball_y <= ball_y + BALL_SIZE;
                    end else begin
                        ball_y <= ball_y - BALL_SIZE;
                    end
                end
            end

            // Ball collision with screen boundaries
            if (ball_x >= (SCREEN_WIDTH - BALL_SIZE) || ball_x <= 0) begin
                ball_xdir <= !ball_xdir;
            end

            if (ball_y <= 0) begin
                ball_ydir <= !ball_ydir;
            end

            // Ball collision with paddle
            if (ball_y >= (paddle_y - BALL_SIZE) && ball_x >= paddle_x && ball_x <= (paddle_x + PADDLE_WIDTH)) begin
                ball_ydir <= !ball_ydir;
            end

            // Ball missed paddle, reset position
            if (ball_y >= SCREEN_HEIGHT) begin
                ball_x <= 10'd320;
                ball_y <= 10'd240;
                ball_xdir <= 1'b1;
                ball_ydir <= 1'b1;
            end

            // Paddle movement
            if (count % PADDLE_SPEED == 0) begin
                paddle_speed_count <= paddle_speed_count + 1;
                if (paddle_speed_count == PADDLE_SPEED) begin
                    paddle_speed_count <= 0;
                    if (left && paddle_x > 0) begin
                        paddle_x <= paddle_x - PADDLE_SPEED;
                    end
                    if (right && (paddle_x < (SCREEN_WIDTH - PADDLE_WIDTH))) begin
                        paddle_x <= paddle_x + PADDLE_SPEED;
                    end
                end
            end
        end
    end

endmodule

