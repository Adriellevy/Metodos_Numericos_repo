%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 1 TP#4 Métodos Numéricos
%%%
%%% Raices de funciones no lineales por Método de Bisección (Bolzano)
%%%
%%% function [c,err,y_r] = Bisección_Bolzano(f,a,b,delta)
%%%
%%% Parámetros de Entrada:
%%%
%%%       f = función a calcular el cero. Diseñada en un script .m
%%%       a = valor inicial del intervalo 
%%%       b = valor final del intervalo 
%%%       delta = error final querido (exactitud del método)
%%%
%%% Parámetros de Salida:
%%%
%%%      c   = raíz de f(x) para el intervalo [a,b]
%%%      err = error final obtenido al finalizar abs(bn-an)
%%%      y_r = valor de la función en el cero obtenido
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [r,err,y_r] = Biseccion_Bolzano(f,a,b,delta)

if nargin<4
    disp('Debe ingresar f, a, b y delta');
    return;
end

ak=a;   % valores iniciales de los intervalos de bisección
bk=b;
y_ak = feval(f,ak);
y_bk = feval(f,bk);
if (y_ak*y_bk)>0
    disp('No existe raiz en el intervalo ingresado. Pruebe con otro intervalo');
    return
end    
N=ceil((log(b-a)-log(delta))/log(2));
for k=1:N
    ck = (ak+bk)/2;  % Punto intermedio del intervalo de bisección
    %[ak ck bk feval(f,ck)] % Tabulación para ver los resultados parciales
    y_ck = feval(f,ck);
    if y_ck==0
        ak=ck;
        bk=ck;
    elseif (y_ak*y_ck)<0
        bk=ck;
    else    
        ak=ck;
        y_ak=y_ck;
    end
end
ck=(ak+bk)/2;
r=ck;
err=abs(bk-ak);
y_r=feval(f,r);