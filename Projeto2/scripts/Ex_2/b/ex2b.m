
% A = N5, N10, N15, N20
% b = [1; 1; ... 1]
% w = 0.5, 0.75, 1.25, 1.5, 1.75
% nmax = 20



% 1) A = N5  ------------------------------------------------------
A5 = N5;
b5 = ones(5,1);

[SOR(A5,b5,0.5,20),SOR(A5,b5,0.75,20), SOR(A5,b5,1.25,20), SOR(A5,b5,1.5,20),SOR(A5,b5,1.75,20)];

linsolve(A5,b5);

% erro:
abs(linsolve(A5,b5) - [SOR(A5,b5,0.5,20),SOR(A5,b5,0.75,20), SOR(A5,b5,1.25,20), SOR(A5,b5,1.5,20),SOR(A5,b5,1.75,20)]);





% 2) A = N10  ------------------------------------------------------
A10 = N10;
b10 = ones(10,1);

[SOR(A10,b10,0.5,20), SOR(A10,b10,0.75,20), SOR(A10,b10,1.25,20), SOR(A10,b10,1.5,20), SOR(A10,b10,1.75,20)];

linsolve(A10,b10);

% erro:
abs(linsolve(A10,b10) - [SOR(A10,b10,0.5,20), SOR(A10,b10,0.75,20), SOR(A10,b10,1.25,20), SOR(A10,b10,1.5,20), SOR(A10,b10,1.75,20)]);




% 3) A = N15  ------------------------------------------------------
A15 = N15;
b15 = ones(15,1);

[SOR(A15,b15,0.5,20),SOR(A15,b15,0.75,20),SOR(A15,b15,1.25,20),SOR(A15,b15,1.5,20),SOR(A15,b15,1.75,20)];

linsolve(A15,b15);

% erro:
abs(linsolve(A15,b15) - [SOR(A15,b15,0.5,20),SOR(A15,b15,0.75,20),SOR(A15,b15,1.25,20),SOR(A15,b15,1.5,20),SOR(A15,b15,1.75,20)]);




% 4) A = N20  ------------------------------------------------------
A20 = N20;
b20 = ones(20,1);

[SOR(A20,b20,0.5,20), SOR(A20,b20,0.75,20), SOR(A20,b20,1.25,20),SOR(A20,b20,1.5,20),SOR(A20,b20,1.75,20)];

linsolve(A20,b20);

% erro:
abs(linsolve(A20,b20) - [SOR(A20,b20,0.5,20), SOR(A20,b20,0.75,20), SOR(A20,b20,1.25,20),SOR(A20,b20,1.5,20),SOR(A20,b20,1.75,20)]);





% Verificar experimentalmente que converge sse w pertence a (0,2)

converge(A5,0.5);
converge(A5,0.75);
converge(A5,1.25);
converge(A5,1.5);
converge(A5,1);
converge(A10,1.3);
converge(A15,1.89);
converge(A20,0.2);
converge(A20,0.001);
% "O modelo converge"

converge(A5,0);
converge(A5,2);
converge(A5,2.5);
converge(A5,10);
converge(A5,-3);
converge(A5,3.14159);
converge(A5,-0.0001);
% "O modelo não converge"




% O que acontece para w = 0 ou w = 2

[SOR(A5,b5,0,20) SOR(A5,b5,2,20)];
[SOR(A10,b10,0,20) SOR(A10,b10,2,20)];
[SOR(A15,b15,0,20) SOR(A15,b15,2,20)];
[SOR(A20,b20,0,20) SOR(A20,b20,2,20)];

