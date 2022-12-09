`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12.06.2021 12:20:52
// Module Name: dff_tb
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ
//Seminario de Arquitectura de Computadoras
module dff_tb();
    //Se�ales tipo reg para las entradas
    reg data;
    reg clk;
    reg reset;
    
    //Se�al tipo wire para la salida
    wire q;

//Generar conexion con el modulo del Flip Flop    
    FF_D_ASINCRONO MC (
    .data(data),
    .clk(clk),
    .reset(reset),
    .q(q),
    .qbar (qbar)
    );
 
 //Inicializar y poner los estimulos   
    initial begin
      clk=0;
         forever #10 clk = ~clk;  
        
     data <= 0;
     reset=0;
     #50;
     data <= 1;
     reset=0;
     #50;
     data <= 1;
     reset=1; 
     #50;
     data <= 1;
     reset=0; 
    end 
endmodule
