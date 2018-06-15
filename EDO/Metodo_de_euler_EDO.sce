//METODO DE PRIMEIRA ORDEM EULER
clc
clear

//function y = f(x) // SOLUÇÃO EXATA
// y = (70/9)*exp(-0.3*x) - (43/9)*exp(-1.2*x);
//endfunction
function z = g(x,y) // SOLUÇÃO DA EDO
    z = x^2-2*y
endfunction

//APLICAÇÃO DO MÉTODO DE EULER

function [x,y] = euler(a,b,h,y0)
    
    x = a:h:b;// CALCULAR TODOS OS VALORES DE X
    
    n = length(x); // quantos elementos do vetor
    y(1) = y0; // primeiro elemtento é o y0;
    
    
    for i = 1:n-1;
        y(i+1) = y(i) + g(x(i),y(i))*h;
    end
endfunction

// Para chamar a função resultado
[x,y] = euler(0,2,0.5,0.25)
plot(x,y,'.')
