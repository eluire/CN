clc
clear 

// FUNÇÃO 1 DO SISTEMA
function z = gL1(t,L1,L2)
  z = -0.004918*sqrt(1960*L1)+(0.2218)*7;
endfunction

//function z = gL1(t,L1,L2)
  // z = -0.004918*sqrt(1960*L1)+(0.2218)*(8+6*sin(t));
//endfunction


//function z = gL1(t,L1,L2)
//    z = -0.004918*sqrt(1960*L1)+(0.2218)*t;
//endfunction
//

// FUNÇÃO 2 DO SISTEMA
function z = gL2(t,L1,L2)
    z = -0.0069*sqrt(1960*L2)+ (0.004918)*sqrt(1960*L1);
endfunction

// APLICAÇÃO DO MÉTODO DE EULER
function [t,L1,L2] = eulerSistema(a,b,h,L10,L20)
   
    t = a:h:b; // t é a variável tempo
    n = length(t);
    
    L1(1) = L10;
    L2(1) = L20;
    
    
    for i = 1:n-1
        kL1 = gL1(t(i),L1(i),L2(i));        
        kL2 = gL2(t(i),L1(i),L2(i));
        
        L1(i+1) = L1(i) + kL1*h;       
        L2(i+1) = L2(i) + kL2*h;
    end
endfunction
