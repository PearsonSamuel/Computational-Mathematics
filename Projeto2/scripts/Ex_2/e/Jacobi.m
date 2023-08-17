
function [sol] = Jacobi(A,b,nmax)

% verificar a matriz A
[rowsA , colsA] = size(A);
if rowsA ~= colsA
    disp("a matriz A deve ser quadrada")
end

% verificar o vetor b
[rowsb , colsb] = size(b);
if rowsb ~= rowsA || colsb ~= 1
    disp("b deve ser um vetor coluna com número de linhas igual ao de A")
end

% A = D + L + U
D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;


% utilização do método 

x0 = zeros(rowsA,1);
i = 1;
while i <= nmax
    xnew = (-inv(D)*(L+U)*x0 + inv(D)*b);
    x0 = xnew;
    i = i + 1;
end

sol = xnew;
end


