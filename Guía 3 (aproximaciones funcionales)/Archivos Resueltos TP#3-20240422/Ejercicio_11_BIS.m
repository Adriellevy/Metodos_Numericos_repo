%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%
%%% Ejercicio Nro. 11 TP#3 Métodos Numéricos
%%%
%%% Aproximación Lineal por Serie Trigonométrica de Fourier
%%% de una señal triangular.
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

T = 5;
Per = 3;
Dt = 0.01;          % Intervalo de Tiempo
w0 = 2*pi/T;
t=0:Dt:Per*T-Dt;      % Eje temporal discreto
y_t = 5*(sawtooth(w0*t)+1)/4;        % Pulso Triangular
M=[5 20 50 200];  % Límites de suma a desarrollar
Cols=['r' 'b' 'c' 'm' 'k'];  % Colores de graficado
H=figure(1);
set(H,'NumberTitle','off','Menubar','none',...
    'name','Serie de Fourier de Señal Rectangular',...
    'position',[20 30 1000 700]);
plot(t,y_t,Cols(1));
hold on;
for i=1:length(M)
    [T,Ya]=Ajuste_Serie_Trig_Fourier(t',y_t',M(i));
    plot(T,Ya,Cols(i+1));
    hold on;
end
xlabel('t');
ylabel('y(t)');
title('Serie Trigonométrica de Fourier de Pulso Triangular')
legend('y(t)','M=5','M=20','M=50','M=200');
grid