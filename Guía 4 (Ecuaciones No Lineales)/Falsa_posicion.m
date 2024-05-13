function [r,err,y_r,M] = Falsa_posicion(F,a,b,N,Truncamiento)
%FALSA_POCISION Summary of this function goes here
%   F es la Funcion a evaluar
%   Intervalos es un vector con dos datos a0 y b0 (en que region buscar la raiz)
%   N cantidad de interaciones aceptadas
%   Truncamiento Error Maximo aceptado (si la fun. llega a ese valor el
%   programa se detiene hasta esa iteraccion
%   raiz Valor que tiene ck cuando se trunca la funcion
%   M   = matriz que contiene las iteraciones de [k ak ck bk f(ck)]

A=a; 
B=b; 
k=1;
M1=zeros(N,5);
E=1;
while (k<N && E>Truncamiento)
    dif_func=feval(F,B)-feval(F,A);
    C=B-(feval(F,B)*(B-A))/dif_func;
    val = feval(F,C);
    M1(k,:)=[k A B C val];
    E = feval(F,C);
    if(feval(F,A)*feval(F,C)<0)
        B=C; 
    elseif(feval(F,B)*feval(F,C)<0)
        A=C;
    end
    k=k+1;        
end

M=M1(1:k,:);
r=C;
err=min([abs(B-C)/2 abs(A-C)/2]);
y_r=feval(F,C);
end

