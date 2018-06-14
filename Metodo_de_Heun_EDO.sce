//METODO DE SEGUNDA ORDEM DE HEUN
clc
clear all;
function z = g(x,y) // SOLUÇÃO DA EDO
    z = x^2-2*y
endfunction

//APLICAÇÃO DO MÉTODO DE HEUN

function [x,y] = heun(a,b,h,y0)
    
    x = a:h:b;// CALCULAR TODOS OS VALORES DE X
    
    n = length(x); // quantos elementos do vetor
    y(1) = y0; // primeiro elemtento é o y0;
    
    
    for i = 1:n-1;
        
        //CALCULA A INCLINACAO INICIAL    
        k1 =  g(x(i),y(i));
        //CALCULA A INCLINACAO FINAL
        k2 =  g(x(i) + h, y(i) + k1*h);
        
        //INCLINAÇÃO CALCULADA
        k = 0.5*(k1 + k2);
        
        y(i+1) = y(i) + k*h;
    end
endfunction

//Para chamar a função resultado
[x,y] =  heun(0,2,0.5,0.25)

//a = -0.5:.0.1:3;
//b = f(a);
//plot(a,b)
