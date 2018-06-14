//METODO DE SEGUNDA ORDEM DO PONTO MÉDIO
clc
clear all;
function z = g(x,y) // SOLUÇÃO DA EDO
    z = x^2-2*y
endfunction
//APLICAÇÃO DO MÉTODO DO PONTO MEDIO

function [x,y] = pontomedio(a,b,h,y0)
    
    x = a:h:b;// CALCULAR TODOS OS VALORES DE X
    
    n = length(x); // quantos elementos do vetor
    y(1) = y0; // primeiro elemtento é o y0;
    
    
    for i = 1:n-1;
        
        //CALCULA A INCLINACAO INICIAL    
        k1 =  g(x(i),y(i));
        //CALCULA O K FINAL
        k2 =  g(x(i) + (h/2), y(i) + k1*(h/2));
        
        //INCLINAÇÃO CALCULADA
        k = k2;
        
        y(i+1) = y(i) + k*h;
    end
endfunction

// Para chamar a função resultado
[x,y] =  pontomedio(0,2,0.5,0.25)

