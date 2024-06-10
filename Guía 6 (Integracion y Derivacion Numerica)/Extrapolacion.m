function [D,err,relerr,n] = Extrapolacion(F,x,Delta,Tol)
%EXTRAPOLACION Summary of this function goes here
%   Detailed explanation goes here
%primera derivada


h = 1;
Max = 15;
err = 1;
relerr = 1;
j = 1;%columnas primer valor vector
k=1;%filas segundo vector 
D(k,j) = (feval(f,x+h)-feval(f,x-h))/(2*h);   % este es el D0(h)

%D(k,j)=(feval(F,x+k*2.^(-j+1))-feval(F,x-k*2.^(-j+1)))/(2.^(-j+2))
while (err>Delta) && (relerr>Tol) && (k<=Max)
    h=h/2;
    D(k,1) = (feval(f,x+h)-feval(f,x-h))/(2*h);  
    for j = 1:k % Recorre todas las columnas de la fila k
        D(k,j) = D(k,j-1)+(D(k,j)-D(k-1,j-1))/(4.^(j-1));  
    end
    err = abs(D(k+1,k+1)-D(k,k));
    relerr = 2 * err / (abs(D(k+1,j+1))+abs(D(k,j))+eps);
    k = k+1;
end




end

