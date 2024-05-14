function [r,err,y_k]= Raices_reales(F,a,b,N,Truncamiento)
%RAICES REALES Summary of this function goes here
%   Detailed explanation goes here
%   F = funcion dada
%   a = valor inicial donde comenzar a buscar la raiz 
%   b = valor final donde comenzar a buscar la raiz

dx= (b-a)/N; 
r=zeros(0);
y_k=zeros(0); % Initialize y_k
xk=a;
E = feval(F,xk);
for k=2:N-1
    fkA=feval(F,xk); %fka es el valfor fk-1 de la funcion (antes de sumarle xk)
    xk=xk+dx;
    fk=feval(F,xk);
    fkD=feval(F,xk+dx); %fka es el valor fk+1 de la funcion (despues de sumarle xk)
    
    E = feval(F,xk);
    
    if(fkA*fk<0)
       disp('opcion1')
       r(end+1)=(xk+xk-dx)/2
       y_k(end+1)=feval(F,r(end));
    elseif((fkD-fk)*(fk-fkA)<0 && abs(fk)<Truncamiento)
        disp('opcion2')
       r(end+1)=xk;
       y_k(end+1)=feval(F,r(end));
    end
   
    E=abs(fk); 
end
err=E;
end