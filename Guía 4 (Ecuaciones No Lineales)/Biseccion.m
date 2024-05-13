function raiz = Biseccion(F,intervalos,N,Truncamiento)
%   F es la Funcion a evaluar
%   Intervalos es un vector con dos datos a0 y b0 (en que region buscar la raiz)
%   N cantidad de datos 
%   raiz Valor que tiene ck cuando se trunca la funcion

A=intervalos(1); 
B=intervalos(2); 
k=0;
E = Truncamiento +1;
while (k<N && E<Truncamiento)
    C=(A+B)/2; 
    E=feval(F,C);
    if(feval(F,A)*E<0)
        B=C; 
    elseif(feval(F,B)*E<0)
        A=C;
    else
        E = Truncamiento;
        disp('No hay raiz');
    end
    k=k+1;
        
end
if(C)raiz = C;
end

