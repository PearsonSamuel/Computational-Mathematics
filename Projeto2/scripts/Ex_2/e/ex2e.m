
% 1) N = 5  ----------------------------------------------------------

A5 = N5;
b5 = ones(5,1);


% Solução Exata:
linsolve(A5,b5)';


% SOR: 
SOR(A5,b5,1.3333,10);
% erro:
abs(linsolve(A5,b5)-SOR(A5,b5,1.3333,10));



% Gauss-Seidel:
SOR(A5,b5,1,10);
% erro:
abs(linsolve(A5,b5)-SOR(A5,b5,1,10));




% Jacobi:
Jacobi(A5,b5,10);
% erro:
abs(linsolve(A5,b5)-Jacobi(A5,b5,10));





% 2) N = 10  ----------------------------------------------------------

A10 = N10;
b10 = ones(10,1);


% Solução Exata:
linsolve(A10,b10);


% SOR: 
SOR(A10,b10,1.5604,10);
% erro:
abs(linsolve(A10,b10)-SOR(A10,b10,1.5604,10));



% Gauss-Seidel:
SOR(A10,b10,1,10);
% erro:
abs(linsolve(A10,b10)-SOR(A10,b10,1,10));




% Jacobi:
Jacobi(A10,b10,10);
% erro:
abs(linsolve(A10,b10)-Jacobi(A10,b10,10));





% 3) N = 15  ----------------------------------------------------------

A15 = N15;
b15 = ones(15,1);


% Solução Exata:
linsolve(A15,b15);


% SOR: 
SOR(A15,b15,1.6735,10);
% erro:
abs(linsolve(A15,b15)-SOR(A15,b15,1.6735,10));




% Gauss-Seidel:
SOR(A15,b15,1,10);
% erro:
abs(linsolve(A15,b15)-SOR(A15,b15,1,10));



% Jacobi:
Jacobi(A15,b15,10);
% erro:
abs(linsolve(A15,b15)-Jacobi(A15,b15,10));



% 4) N = 20  ----------------------------------------------------------

A20 = N20;
b20 = ones(20,1);


% Solução Exata:
linsolve(A20,b20);


% SOR: 
SOR(A20,b20,1.7406,10);
% erro:
abs(linsolve(A20,b20)-SOR(A20,b20,1.7406,10));


% Gauss-Seidel:
SOR(A20,b20,1,10);
% erro:
abs(linsolve(A20,b20)-SOR(A20,b20,1,10));


% Jacobi:
Jacobi(A20,b20,10);
% erro:
abs(linsolve(A20,b20)-Jacobi(A20,b20,10))


