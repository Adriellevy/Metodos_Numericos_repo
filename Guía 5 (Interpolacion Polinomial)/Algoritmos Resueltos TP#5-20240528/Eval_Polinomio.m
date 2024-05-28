%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Evaluación de Polinomio de Grado N en en entorno X. Se 
%%% genera una función que varía según las abscisas ingresadas
%%%
%%% Variables de entrada:
%%%
%%%         X: Entorno de abscisas donde se evalúa el polinomio
%%%         C: Coeficientes del polinomio a evaluar
%%%
%%% Variables de Salida:
%%%
%%%         Poli_Eval: Polinomio evaluado en el entorno de X
%%%
%%% Dr. Ing. Franco Pessana
%%% Período Lectivo 2015
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Poli_Eval = Eval_Polinomio(X,C)

N = length(C)-1; % Orden del Polinomio a Evaluar
Expo = N:-1:0;
Poli_Eval=zeros(size(X));
for k=1:length(X)
    Poli = X(k).^Expo;
    Poli_Eval(k) = C*Poli';
end
