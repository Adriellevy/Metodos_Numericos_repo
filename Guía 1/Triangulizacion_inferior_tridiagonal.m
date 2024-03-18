function [Matriz_resolucion] = Triangulizacion_inferior_tridiagonal(Matriz_a_diagonalizar,Matriz_resultados)
    tam = size(Matriz_a_diagonalizar);
    filas = tam(1); 
    columnas = tam(2);
    
    B = diag(Matriz_a_diagonalizar);
    C = diag(Matriz_a_diagonalizar,1);
    A = diag(Matriz_a_diagonalizar,-1);
    for i = 1:filas
       factor = A(i)/B(i);
       B(i+1)= B(i+1)-
       Matriz_a_diagonalizar(i,i)=Matriz_a_diagonalizar-factor*Matriz_a_diagonalizar
       Matriz_resultados
    end
            
%back sustitution       
    for j = 1:filas
        
    end
end

