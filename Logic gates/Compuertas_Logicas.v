`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 26.03.2021 18:08:36
// Module Name: Compuertas_Logicas
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ
//Seminario de Arquirtectura de Computadoras

module Compuertas_Logicas(
    input A,    //Entrada 1
    input B,    //Entrada 2    
    output S1,  //Salida AND
    output S2,  //Salida NAND 
    output S3,  //Salida OR
    output S4,  //Salida NOR
    output S5,  //Salida XOR
    output S6,  //Salida XNOR
    output S7,  //Salida NOT
    output S8   //Salida NOT con la doble entrada de NOT de A y B
    );

wire con; //Hacer conexion entre ambas entradas NOT
   
assign S1 = A & B;  //Compuerta AND
assign S2 = ~(A & B);   //Compuerta NAND
assign S3 = A | B;  //Compuerta OR
assign S4 = ~(A | B);   //Compuerta NOR
assign S5 = A ^ B;  //Compuerta XOR
assign S6 = ~(A ^ B);   //Compuerta XNOR   
assign con = ~A;    //Compuerta NOT entrada 1
assign S7 = ~B;     //Compuerta NOT entrada 2   
assign S8 = con+S7; //Doble entrada NOT 
    
endmodule
