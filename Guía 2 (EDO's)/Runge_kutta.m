function E = Runge_kutta(f,t0,tf,y0,M)

if nargin<5
    disp('Debe ingresar función f, tiempos iniciales y finales t0, tf, condición inicial y0 y pasos M');
    return;
end

h=(tf-t0)/M; % Intervalo de tiempo Delta_t
T=t0:h:tf;  % Vector de Tiempo (M+1 valores)
Y=zeros(size(T));
Y(1)=y0;    
for k=1:M
    f1=feval(f,T(k),Y(k));
    f2=feval(f,T(k)+h/2,Y(k)+h*f1/2);
    f3=feval(f,T(k)+h/2,Y(k)+h*f2/2);
    f4=feval(f,T(k)+h,Y(k)+h*f3);
    Y(k+1)=Y(k)+h*(f1+2*f2+2*f3+f4)/6;
end
E=[T' Y'];
end

