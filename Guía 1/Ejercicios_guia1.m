%Ejercicio 3
A31 = [3 -2 1 -1;0 4 -1 2;0 0 2 3;0 0 0 5];
B31 = [8 -3 11 15]';
A32 = [5 -3 -7 1;0 11 9 5;0 0 3 -13;0 0 0 7];
B32 = [-14 22 -11 14]';
A33 = [4 -1 2 2 -1;0 -2 6 2 7;0 0 1 -1 -1;0 0 0 -2 -1;0 0 0 0 3];
B33 = [4 0 3 10 6]';
%Back_Sustitution(A1,B1)



%%% Matrices ejerccio 06-A
A6a=[2,0,0,0;-1,4,0,0;3,-2,-1,0;1,-2,6,3];
B6a=[6,5,4,2]';
%%% Matrices ejerccio 06-B
A6b=[-5,0,0,0;1,3,0,0;3,4,2,0;-1,3,-6,-4];
B6b=[-10,4,2,5]';

%Ejercicio6
%Foward_Sustitution(Aa,Ba); 

%Ejercicio 8
A8mat=[1,1,1;1,2,4;1,3,9]; 
A8resul=[4,7,14]';

Triang_Gauss_pessana(A8mat,A8resul)
Triangularizacion_Inferior_gausseana(A8mat,A8resul)

A8c=[1,2,0,-1;2,3,-1,0;0,4,2,-5;5,5,2,-4];
B8c=[9,9,26,32]';

%Triang_Gauss_pessana(A8c,B8c)
%Triangularizacion_Inferior_gausseana(A8c,B8c)

%Polinomio 2x^4 -x^3 + 3x^2 - 8 p4(8) = 30
P4 = [2 -1 3 1 -8];
%Polinomio(P4,2)


