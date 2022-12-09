`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Create Date: 12.06.2021 13:36:49
// Module Name: dff_tb_syn
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ

module dff_tb_syn();
    //Se�ales tipo reg para las entradas
    reg data;
    reg clk;
    reg reset;
    
    //Se�al tipo wire para la salida
    wire q;

//Generar conexion con el modulo del Flip Flop    
    FF_D_SINCRONO MC (
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
