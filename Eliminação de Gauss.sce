clc
#defina a matriz
A = [4 3 8 1; 12 10 30 8; 24 25 93 49; 20 19 85 90]
[nl,nc]=size(A)
    for i= 1:nl
        pivo=A(i,i)
            for j= i+1:nc
            A(j,:)=A(j,:)-(A(j,i)/pivo).*A(i,:)
            end
    end
