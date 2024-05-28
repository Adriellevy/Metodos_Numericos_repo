%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Evaluación de Polinomio de Grado N en el entorno X. Se 
%%% genera una función que varía según las abscisas ingresadas
%%%
%%% Variables de entrada:
%%%
%%%         X: Entorno de abscisas donde se evalúa el polinomio
%%%         C: Coeficientes del polinomio a evaluar
%%%         X0: Centro del polinomio
%%%
%%% Variables de Salida:
%%%
%%%         Poli_Eval: Polinomio evaluado en el entorno de (X-x0)
%%%
%%% Se evalúa en en entorno X al polinomio:
%%%             S(x)=C3*(x-xk0)^3+C2*(x-x0)^2+s1*(x-x0)+C0 
%%% 
%%% Dr. Ing. Franco Pessana
%%% Período Lectivo 2021
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Poli_Eval = Eval_Polinomio2(X,C,x0)

N = length(C)-1; % Orden del Polinomio a Evaluar
Expo = N:-1:0;
Poli_Eval=zeros(size(X));
for k=1:length(X)
    Poli = (X(k)-x0).^Expo;
    Poli_Eval(k) = C*Poli';
end
