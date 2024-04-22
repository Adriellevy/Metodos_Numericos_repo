%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 8 TP#3 Métodos Numéricos
%%%
%%% Aproximación Polinomial
%%%
%%% Dr. Ing. Franco Pessana
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function Ejercicio_8abc(M)

if nargin<1
    M=2;
end    
Xa=[-2 -1 0 1 2];  % Abscisas y ordenadas a aproximar
Ya=[-5.8 1.1 3.8 3.3 -1.5];
Yb=[2.8 2.1 3.25 6.0 11.5];
Yc=[10 1 0 2 9];

X=[Xa;Xa;Xa];
Y=[Ya;Yb;Yc];
Ax=0.01;
x=min(Xa):Ax:max(Xa); 
Ti=['a' 'b' 'c'];
H=figure(1);
set(H,'name','MN. TP#3. Ejercicio 8','position',[20 50 1200 700]);
for i=1:3
    subplot(1,3,i)
    plot(X(i,:),Y(i,:),'r*');
    title(Ti(i))
    xlabel('x');
    ylabel('y');
    hold on;
end    
for i=1:3
    C = Ajuste_Polinomial(X(i,:),Y(i,:),M);
    Ya=zeros(3,length(x));
    for j=1:length(x)
        Ya(i,j)=Eval_Polinomio_Rapida(x(j),C);
    end    
    subplot(1,3,i)
    plot(x,Ya(i,:),'b');
    grid
end
hold off;
end