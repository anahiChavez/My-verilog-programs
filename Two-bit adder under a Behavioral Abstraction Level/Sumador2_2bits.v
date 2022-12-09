`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 07.04.2021 16:50:58
// Module Name: Sumador2_2bits
//////////////////////////////////////////////////////////////////////////////////
//Seminario Arquitectura de Computadoras
//MAGALI ANAHI MEZA CHAVEZ

module Sumador2_2bits(
    input A, //Entrada 1
    input B, //Entrada 2
    output reg S, //Suma
    output reg C  //Acarreo
    );
    
    always @(*)
    begin
    S= A^B; //Compuerta XOR
    C= A&B; //Compuerta AND
    end 
    
endmodule
