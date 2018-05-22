clear
clc
n=99
b=3.2
a=1.8
soma=0
function y=f(x)
    y=200 ./(x+8)
endfunction
h=(b-a)/n
x = a:h:b
y = f(x)
for i=1:n-1
    soma=soma+y(i)+y(i+1)
end
result=(h/2)*soma
