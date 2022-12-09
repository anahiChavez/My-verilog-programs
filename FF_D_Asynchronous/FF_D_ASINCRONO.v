`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ
//Seminario de Arquitectura de Computadoras

module FF_D_ASINCRONO(reset,clk,data,q,qbar);
   //Entradas
    input data, reset, clk; 
   //Salidas
    output qbar; 
    output reg q;
   
   always @(posedge clk or posedge reset) 
    if (reset)
    begin
        q <= 1'b0;
    end else
    begin
        q <= data;
    end 
   assign qbar = ~q;
endmodule
