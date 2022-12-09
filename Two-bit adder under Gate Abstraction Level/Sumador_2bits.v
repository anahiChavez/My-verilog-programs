`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////// 
// Create Date: 07.04.2021 14:52:06
// Module Name: Sumador_2bits
//////////////////////////////////////////////////////////////////////////////////
//Seminario Arquitectura de Computadoras
//MAGALI ANAHI MEZA CHAVEZ

module Sumador_2bits(
    input A, //Entrada 1
    input B, //Entrada 2
    output S, //Suma
    output C  //Acarreo
    );
    
    xor (S, A, B); //Compuerta XOR
    and (C, A, B);  //Comuerta AND  
   
endmodule
