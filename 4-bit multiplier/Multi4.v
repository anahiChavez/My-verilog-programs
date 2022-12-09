`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 28.04.2021 22:37:35 
// Module Name: Multi4
//////////////////////////////////////////////////////////////////////////////////
//Magali Anahi Meza Chavez
//Seminario de Arquitectura de Computadoras

module Multi4(A, B, P);
input[3:0]A; //Entrada 1 de 4 bits
input[3:0]B; //Entrada 2 de 4 bits

//Conexiones para las sumas
wire[3:0]m0;  
wire[4:0]m1;
wire[5:0]m2;
wire[6:0]m3;

//Conexiones para las salidas de la suma y el desplazamiento
wire[7:0]s1,s2,s3;

//Salida del producto, 8 bits
output[7:0]P;

//Sumas de cada renglon
assign m0 = {4{A[0]}}& B[3:0];
assign m1 = {4{A[1]}}& B[3:0];
assign m2 = {4{A[2]}}& B[3:0];
assign m3 = {4{A[3]}}& B[3:0];

//Desplazamiento a la izquierda de las sumas y asignar el resultado
assign s1= m0+(m1<<1);
assign s2= s1+(m2<<2);
assign s3= s2+(m3<<3);
assign P= s3;
endmodule
