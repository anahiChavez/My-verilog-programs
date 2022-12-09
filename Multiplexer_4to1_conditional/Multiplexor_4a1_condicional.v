`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 15.05.2021 16:34:03
// Module Name: Multiplexor_4a1_condicional
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ 
//Seminario Arquitectura de Computadoras

module Multiplexor_4a1_condicional(
    input [3:0] L0,
    input [3:0] L1,
    input [3:0] L2,
    input [3:0] L3,
    input [1:0] SEL,
    output reg [3:0] R
    );
    
        
    always @ (L0 or L1 or L2 or L3 or SEL) 
    begin
        case (SEL)
            2'b00: R = L0;
            2'b01: R = L1;
            2'b10: R = L2;
            2'b11: R = L3;
        endcase   
    end 
endmodule
