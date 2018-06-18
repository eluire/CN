//sistema de EDO por RK-4
// declarar minha funçoes
clc
clear
function y=gx(t,x,z)
    y=z
endfunction
function y=gz(t,x,z)
    y=-4*x+(5/2)*cos(3*t)
endfunction

//inicialização do Metodo
function [t,x,z]=sisRK4(a,b,h,x0,z0)
    t=a:h:b
    n=length(t)
    x(1)=x0
    z(1)=z0
    for i=1:n-1
        //calculando as inclinaçoes do começo do intervalo
        k1x=gx(t(i),x(i),z(i))
        k1z=gz(t(i),x(i),z(i))
        //calculando as inclinaçoes do meio do intervalo
        k2x=gx(t(i)+(h/2),x(i)+k1x*(h/2),z(i)+k1z*(h/2))
        k2z=gz(t(i)+(h/2),x(i)+k1x*(h/2),z(i)+k1z*(h/2))
        
        k3x=gx(t(i)+(h/2),x(i)+k2x*(h/2),z(i)+k2z*(h/2))
        k3z=gz(t(i)+(h/2),x(i)+k2x*(h/2),z(i)+k2z*(h/2))
        //calculando as inclinaçoes do final do intervalo
        k4x=gx(t(i)+h,x(i)+k3x*h,z(i)+k3z*h)
        k4z=gz(t(i)+h,x(i)+k3x*h,z(i)+k3z*h)
        //calculando a inclinação ponderada
        kx=((k1x+2*k2x+2*k3x+k4x)*(1/6))
        kz=((k1z+2*k2z+2*k3z+k4z)*(1/6))
        //resultados finais da inteiração
        x(i+1)=x(i)+kx*h
        z(i+1)=z(i)+kz*h
    end        
endfunction
    //chamada da função com os parametros certos 
    [t,x,z]=sisRK4(0,10,1,0.1,0.1)
