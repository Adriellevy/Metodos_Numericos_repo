%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%% Ejercicio Nro. 7 TP#3 Métodos Numéricos
%%%
%%% Aproximación Polinomial
%%%
%%% Dr. Ing. Franco Pessana
%%% 
%%% FICEN
%%% Universidad Favaloro
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clear
clc

X=[0 0.15 0.31 0.5 0.6 0.75];  % Abscisas y ordenadas a aproximar
Y=[1.0 1.004 1.031 1.117 1.223 1.422];

M=[1 2 3 4];
Cols=['b' 'g' 'm' 'k'];
H1=figure(1);
set(H1,'position',[50 100 900 550],'Menubar','none',...
        'NumberTitle','off','name',...
        'FICEN UF. TP#3. Ejercicio 7 Aproximación Polinomial');
plot(X,Y,'rO');
hold on;
Ax=0.01;
x=min(X):Ax:max(X);
for i=1:4
    C = Ajuste_Polinomial(X,Y,M(i));
    Ya=zeros(size(X));
    Yag=zeros(size(x));
    for j=1:length(X)
        Ya(j)=Eval_Polinomio_Rapida(X(j),C);
    end
    for j=1:length(x)
        Yag(j)=Eval_Polinomio_Rapida(x(j),C);
    end
    E2_mean = sqrt(sum((Y-Ya).^2))/length(X);
    disp(strcat('Error Cuadrático medio ECM',num2str(i),'=',num2str(E2_mean)))
    plot(x,Yag,Cols(i));
    hold on;
end
xlabel('x');
ylabel('y');
legend('Nube xy','M=1','M=2','M=3','M=4')
grid
hold off