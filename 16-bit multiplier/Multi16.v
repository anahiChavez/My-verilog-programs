`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 28.04.2021 23:39:44
// Module Name: Multi16
//////////////////////////////////////////////////////////////////////////////////
//Magali Anahi Meza Chavez
//Seminario de Arquitectura de Computadoras

module Multi16(A, B, P);
input[15:0]A; //Entrada 1 de 16 bits
input[15:0]B; //Entrada 2 de 16 bits

//Conexiones para las sumas
wire[15:0]m0;
wire[16:0]m1;
wire[17:0]m2;
wire[18:0]m3;
wire[19:0]m4;
wire[20:0]m5;
wire[21:0]m6;
wire[22:0]m7;
wire[23:0]m8;
wire[24:0]m9;
wire[25:0]m10;
wire[26:0]m11;
wire[27:0]m12;
wire[28:0]m13;
wire[29:0]m14;
wire[30:0]m15;

//Conexiones para las salidas de la suma y el desplazamiento
wire[31:0]s1,s2,s3,s4,s5,s6,s7,s8,s9,s10,s11,s12,s13,s14,s15;

//Salida del producto, 32 bits
output[31:0]P;

//Sumas de cada renglon
assign m0 = {16{A[0]}}& B[15:0];
assign m1 = {16{A[1]}}& B[15:0];
assign m2 = {16{A[2]}}& B[15:0];
assign m3 = {16{A[3]}}& B[15:0];
assign m4 = {16{A[4]}}& B[15:0];
assign m5 = {16{A[5]}}& B[15:0];
assign m6 = {16{A[6]}}& B[15:0];
assign m7 = {16{A[7]}}& B[15:0];
assign m8 = {16{A[8]}}& B[15:0];
assign m9 = {16{A[9]}}& B[15:0];
assign m10 = {16{A[10]}}& B[15:0];
assign m11 = {16{A[11]}}& B[15:0];
assign m12 = {16{A[12]}}& B[15:0];
assign m13 = {16{A[13]}}& B[15:0];
assign m14 = {16{A[14]}}& B[15:0];
assign m15 = {16{A[15]}}& B[15:0];

//Desplazamiento a la izquierda de las sumas y asignar el resultado
assign s1= m0+(m1<<1);
assign s2= s1+(m2<<2);
assign s3= s2+(m3<<3);
assign s4= s3+(m4<<4);
assign s5= s4+(m5<<5);
assign s6= s5+(m6<<6);
assign s7= s6+(m7<<7);
assign s8= s7+(m8<<8);
assign s9= s8+(m9<<9);
assign s10= s9+(m10<<10);
assign s11= s10+(m11<<11);
assign s12= s11+(m12<<12);
assign s13= s12+(m13<<13);
assign s14= s13+(m14<<14);
assign s15= s14+(m15<<15);
assign P= s15;

endmodule
