function raiz = Biseccion(F,a,b,N,Truncamiento)
%   F es la Funcion a evaluar
%   Intervalos es un vector con dos datos a0 y b0 (en que region buscar la raiz)
%   N cantidad de datos 
%   raiz Valor que tiene ck cuando se trunca la funcion

A=a; 
B=b; 
k=0;

y_ak = feval(F,A);
y_bk = feval(F,B);
C=(y_ak+y_bk)/2;
E = feval(F,C);

if (y_ak*y_bk)>0
    disp('No existe raiz en el intervalo ingresado. Pruebe con otro intervalo');
    return
end  


while (k<N && abs(E)>Truncamiento)
    C=(A+B)/2;   
    if(feval(F,A)*feval(F,C)<0)
        B=C; 
    elseif(feval(F,B)*feval(F,C)<0)
        A=C;
    elseif(feval(F,C)==0)
        k=N;
    else
        k=N;
        disp('No hay raiz');
    end
    E=feval(F,C);
    k=k+1;
end
    raiz = C;
end

