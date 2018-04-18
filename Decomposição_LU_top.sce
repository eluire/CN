clc
clear
//defina a matriz
A = [4 3 8 1; 12 10 30 8; 24 25 93 49; 20 19 85 90]
[nl,nc]=size(A)
L=eye(nl,nc)
    for i= 1:nl
        pivo=A(i,i)
            for j= i+1:nc
            fator=(A(j,i)/pivo)
            A(j,:)=A(j,:)-fator.*A(i,:)
            L(j,i)=fator   
            end
       
    end
U=A
//matriz original 
A=L*U
//se tivermos um problema do tipo Ax=B
//A=L*U entao podemos dizer que L*U*x=B
//onde y=U*x logo
//depende do numero de encognitas
C=L*y
