%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%Ejercicio 4 guía 1
%%%
%%%  | a1  0   0 0  || R1 |
%%%  | b1  b2  0 0  || R2 |
%%%  | c1  c2 c3 0  || R3 |
%%%  | d1  d2 d3 d4 || R4 |
%%%
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function Xn=Foward_Sustitution(Matriz_de_Coeficientes,Resultados)
   dimensiones = size(Matriz_de_Coeficientes);
   Filas = dimensiones(1); 
   Columnas = dimensiones(2);
   Xn = zeros(Filas,1);
   Xn(1)=Resultados(1,1)/Matriz_de_Coeficientes(1,1); 
   
   for i = 2:Filas
        Xn(i)=(Resultados(i)- Matriz_de_Coeficientes(i,1:i-1)*Xn(1:i-1) )/Matriz_de_Coeficientes(i,i);
   end
end
