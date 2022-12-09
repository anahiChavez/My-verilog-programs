`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 07.04.2021 17:00:34
// Module Name: Simulacion_1
//////////////////////////////////////////////////////////////////////////////////
// MAGALI ANAHI MEZA CHAVEZ

module Simulacion_1();
//Se�ales tipo reg para las entradas
reg A;
reg B;

//Se�ales tipo wire para las salidas
wire S;
wire C;

//Generar conexiones con el modulo del sumador
Sumador2_2bits MC (
.A(A),
.B(B),
.S(S),
.C(C)
);

initial
begin
//Inicializar entradas
A= 1'b0;
B= 1'b0;

//Estimulos y duracion de cada estimulo
#5
A= 1'b0;
B= 1'b0;

#5
A= 1'b0;
B= 1'b1;

#5
A= 1'b1;
B= 1'b0;

#5
A= 1'b1;
B= 1'b1;

end   
endmodule
