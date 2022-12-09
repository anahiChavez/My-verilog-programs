`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 15.05.2021 17:58:53
// Module Name: Simulacion
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ 
//Seminario Arquitectura de Computadoras

module Simulacion();
    //Entradas
    reg [3:0] L0;
    reg [3:0] L1;
    reg [3:0] L2;
    reg [3:0] L3;
    reg [1:0] SEL;
    
    //Salida
    wire [3:0] R;
    
    //Generar conexiones con el modulo del multiplexor
    Multiplexor_4a1_condicional MC(
    .L0(L0),
    .L1(L1),
    .L2(L2),
    .L3(L3),
    .SEL(SEL),
    .R(R)
    );

    //Inicializar entradas y estimulos y la duracion de cada estimulo    
    initial
    begin
        L0 = 4'b0001; 
        L1 = 4'b0000; 
        L2 = 4'b0000;
        L3 = 4'b0000;  
        SEL =2'b00;
        #100
        L0 = 4'b0000; 
        L1 = 4'b0001; 
        L2 = 4'b0000;
        L3 = 4'b0000;        
        SEL =2'b01;
        #100
        L0 = 4'b0000; 
        L1 = 4'b0000; 
        L2 = 4'b0001;
        L3 = 4'b0000;
        SEL =2'b10;
        #100
        L0 = 4'b0000; 
        L1 = 4'b0000; 
        L2 = 4'b0000;
        L3 = 4'b0001;
        SEL =2'b11;                      
    end
endmodule
