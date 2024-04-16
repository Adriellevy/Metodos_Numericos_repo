%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Ejercicio resulto 1 en clase Metodos Numericos
% 
% Evaluacion del polinomio mediante la tecnica de ruffini



function evaluacion = Polinomio( Argumentos, x0)
    Taman=length(Argumentos); 
    B = zeros(Taman); 
    B(1)=Argumentos(1);
    for i = 2:Taman
         B(i)= Argumentos(i)+x0*B(i-1);
    end
    evaluacion = B(Taman);
end

