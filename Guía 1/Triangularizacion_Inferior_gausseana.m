function X=Triangularizacion_Inferior_gausseana(Matriz_Coeficientes,Resultados)
    dimensiones = size(Matriz_Coeficientes);
    filas= dimensiones(1);
    columnas = dimensiones(2); 
    if(columnas ~= filas)
        return 
    end
    %Busco la fila con el coeficiente mas alto en la diagonal (empieza en 1
    %y termina en la cantidad de columnas
    for contador_columnas = 1:columnas
        [MaxVal,MaxInd]=max(abs(Matriz_Coeficientes(contador_columnas:filas,contador_columnas)));
        if(MaxInd~=contador_columnas)
            aux = Matriz_Coeficientes(1,1:columnas); 
            Matriz_Coeficientes(1,1:columnas) = Matriz_Coeficientes(MaxInd,1:columnas); 
            Matriz_Coeficientes(1,1:columnas) = aux(1,1:columnas);
        end
        %Resto en cada fila el valor necesario para que en esa columna el
        %unico valor que queda esa el coeficiente con el valor abs mayor
        for contador_filas=contador_columnas+1:filas
            factor = Matriz_Coeficientes(contador_filas,contador_columnas)/Matriz_Coeficientes(contador_columnas,contador_columnas);
            %Hago las operaciones linealies en cad columna de la fila
            %(tanto la matriz de coef como la matriz de resultados)
            Matriz_Coeficientes(contador_filas,contador_columnas:columnas)=Matriz_Coeficientes(contador_filas,contador_columnas:columnas)-(factor*Matriz_Coeficientes(contador_columnas,contador_columnas:columnas));
            Resultados(contador_filas,1)=Resultados(contador_filas,1)- factor*Resultados(contador_columnas,1);
        end
    end
    X = Back_Subs(Matriz_Coeficientes,Resultados);
end