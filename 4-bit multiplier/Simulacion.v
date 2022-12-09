`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 28.04.2021 22:52:07
// Module Name: Simulacion
//////////////////////////////////////////////////////////////////////////////////
//Magali Anahi Meza Chavez
//Seminario de Arquitectura de Computadoras

module Simulacion();
//Se�ales tipo reg para las entradas
reg[3:0] A;
reg[3:0] B;

//Se�ales tipo wire para las salidas
wire[7:0] P;

//Generar conexiones con el modulo del multiplicador
Multi4 MC (
.A(A),
.B(B),
.P(P)
);

//Inicializar entradas y estimulos y la duracion de cada estimulo
initial 
begin
    A=4'b0011; B=4'd3; 
    #50
    A=7;     B=1;
    #50
    A=4'hA;  B=4'hA;
 
end

endmodule
