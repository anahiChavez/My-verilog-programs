`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 29.04.2021 00:17:57
// Module Name: Simulacion_multi 
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ

module Simulacion_multi();
//Se�ales tipo reg para las entradas
reg[15:0] A;
reg[15:0] B;

//Se�ales tipo wire para las salidas
wire[31:0] P;

//Generar conexiones con el modulo del multiplicador
Multi16 MC (
.A(A),
.B(B),
.P(P)
);

//Inicializar entradas y estimulos y la duracion de cada estimulo
initial 
begin
    A=16'b0000000001111010; B=16'd122;
    #50
    A=15;     B=1;
    #50
    A=16'hA;  B=16'hA;
 
end
endmodule
