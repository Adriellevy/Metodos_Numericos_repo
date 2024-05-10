%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
% Primer Ejemplo de MN 2023
%
% Graficado de señales continuas
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

t0 = 0;
tf = 3;
At = 1e-3;

t = t0:At:tf;
x_t = 3*exp(-2*t).*sin(10*t+pi/3);
y_t = 3*exp(-2*t).*cos(10*t+pi/3);
H1 = figure(1);
set(H1,'position',[30 40 1000 700],'name','Mi primer Ejemplo')
subplot(2,1,1)
plot(t,x_t,'r')
grid
xlabel('t(s)')
ylabel('x(t) (v)')
subplot(2,2,4)
plot(t,y_t,'b')
grid
xlabel('t(s)')
ylabel('y(t) (v)')
H2 = figure(2);
set(H2,'name','Otro gráfico','position',[100 40 1000 700])
plot(t,x_t,'r',t,y_t,'b');
xlabel('t (s)')
ylabel('x(t) e y(t)')
grid