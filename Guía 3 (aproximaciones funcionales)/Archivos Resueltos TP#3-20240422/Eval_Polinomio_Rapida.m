%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Evaluación de Polinomio de Grado N en un punto X0. 
%%% Forma de evalucción en forma recursiva (Ruffini)
%%%
%%% Variables de entrada:
%%%
%%%         x0: Punto del eje real donde se evaluará el polinomio
%%%         C: Coeficientes del polinomio a evaluar
%%%
%%% Variables de Salida:
%%%
%%%         Poli_Eval: Polinomio evaluado en el punto x0
%%%
%%% Dr. Ing. Franco Pessana
%%% 
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Poli_Eval = Eval_Polinomio_Rapida(x0,C)

N = length(C)-1; % Orden del Polinomio a Evaluar
b(N+1)=C(1);
for k=N:-1:1
    b(k) = C(N-k+2) + x0*b(k+1);
end
Poli_Eval = b(1);