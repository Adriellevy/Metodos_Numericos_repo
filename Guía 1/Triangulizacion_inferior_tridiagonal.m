function [Matriz_resolucion] = Triangulizacion_inferior_tridiagonal(Matriz_a_diagonalizar,Matriz_resultados)
    tam = size(Matriz_a_diagonalizar);
    filas = tam(1); 
    columnas = tam(2);
    Matriz_triadiagonalizada_inferior = Zeros(tam); 
    
    B = diag(Matriz_a_diagonalizar);
    C = diag(Matriz_a_diagonalizar,1);
    A = diag(Matriz_a_diagonalizar,-1);
    Matriz_triadiagonalizada_inferior(1,1)=Matriz_a_diagonalizar(1,1);
    for i = 1:filas-1
       factor = A(i)/B(i);
       Matriz_triadiagonalizada_inferior(i+1)= B(i+1)- C(i+1)*factor;
       Matriz_resultados = Matriz_resultados- Factor*Matriz_resultados(i+1);
    end
            
    %back sustitution   
    X=zeros(filas,1);
    X(filas)=B(filas)/b(filas);
    for k =filas-1:-1:1
    X(k)=(B(k)-c(k)*X(k+1))/b(k);
    end
end

