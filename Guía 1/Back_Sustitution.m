%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Ejercicio 1 gu�a 1 
%
%Sustitucion hacia atras de una matriz para obtener los valores Resultados
%  | a1 a2 a3 a4 || R1 |
%  | 0  b1 b2 b3 || R2 |
%  | 0   0 c1 c2 || R3 |
%  | 0   0  0 d1 || R4 |

function Xn=Back_Sustitution(Matriz_de_Coeficientes,Resultados)
    Dimensiones = size(Matriz_de_Coeficientes);
    Filas = Dimensiones(1);
    Columnas = Dimensiones(2); 
    Xn=zeros(Filas,1);
    if(Filas == Columnas)
        Xn(Filas)=Resultados(Filas)/Matriz_de_Coeficientes(Filas,Columnas);
        for i = Filas-1:-1:1 
            Sum_pesos_x_j_esimo=0;
            for j = i+1:Filas
                Sum_pesos_x_j_esimo = Sum_pesos_x_j_esimo + Matriz_de_Coeficientes(i,j)*Xn(j);
            end
            Xn(i)=(Resultados(i)-Sum_pesos_x_j_esimo)/Matriz_de_Coeficientes(i,i);
        end
    end
        
end
