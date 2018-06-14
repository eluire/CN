//METODO DE QUARTA ORDEM DE RUNGE-KUTTA

clc
clear 
function z = g(x,y) // SOLUÇÃO DA EDO
    z = x^2-2*y
endfunction

//APLICAÇÃO DO MÉTODO DE RK-4

function [x,y] = rk(a,b,h,y0)
    
   
    
    x = a:h:b;// CALCULAR TODOS OS VALORES DE X
    
    n = length(x); // quantos elementos do vetor
    y(1) = y0; // primeiro elemtento é o y0;
    
    
    for i = 1:n-1;
        
        //CALCULA AS INCLINAÇÕES
        k1 =  g(x(i),y(i));
        k2 =  g(x(i) + (h/2), y(i) + k1*(h/2));
        k3 =  g(x(i) + (h/2), y(i) + k2*(h/2));
        k4 =  g(x(i) + h, y(i) + k3*h);
        
        //INCLINAÇÃO CALCULADA PONDERADA
        k = (1/6)*(k1+2*k2+2*k3+k4);
        
        y(i+1) = y(i) + k*h;
    end
endfunction

// Para chamar a função resultado
[x,y] =  rk(0,2,0.5,0.25)
