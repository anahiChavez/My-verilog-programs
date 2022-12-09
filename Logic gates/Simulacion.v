`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// 
// Create Date: 26.03.2021 18:32:01
// Module Name: Simulacion
// 
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ

module Simulacion();
//Se�ales tipo REG para entradas
 reg A;
 reg B;

//Se�ales tipo WIRE para las salidas
 wire S1;
 wire S2;
 wire S3;
 wire S4;
 wire S5;
 wire S6;
 wire S7;
 wire S8;

//Generar conexiones con el modulo de las compuertas
Compuertas_Logicas MC (
 .A(A),
 .B(B),
 .S1(S1),
 .S2(S2),
 .S3(S3),
 .S4(S4),
 .S5(S5),
 .S6(S6),
 .S7(S7),
 .S8(S8)
    );

 initial //modulo inicial
 begin
    //Valores iniciales
 A=1'b0;
 B=1'b0;
    //Estimulos y duracion de cada estimulo 
 #50;
 A=1'b0;
 B=1'b0;

 #50;
 A=1'b0;
 B=1'b1;

 #50;
 A=1'b1;
 B=1'b0;

 #50;
 A=1'b1;
 B=1'b1;

 end
 endmodule
