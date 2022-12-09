`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
//////////////////////////////////////////////////////////////////////////////////
//MAGALI ANAHI MEZA CHAVEZ
//Seminario de Arquitectura de Computadoras

module FF_D_SINCRONO(reset,clk,data,q,qbar);
    //Entradas
    input data, reset, clk;
    output qbar;
    output reg q;
   
   always @(posedge clk) 
    begin
        if(reset)
            q <= 1'b0; 
     else 
            q <= data; 
    end 
   assign qbar = ~q;
endmodule



