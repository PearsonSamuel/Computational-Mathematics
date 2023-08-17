
function [sol] = SOR(A,b,w,nmax)

% verificar a matriz A
[rowsA , colsA] = size(A);
if rowsA ~= colsA
    disp("a matriz A deve ser quadrada")
    return
end

% verificar o vetor b
[rowsb , colsb] = size(b);
if rowsb ~= rowsA || colsb ~= 1
    disp("b deve ser um vetor coluna com número de linhas igual ao número de linhas de A")
    return
end

% A = D + L + U
D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;


% utilização do método SOR

x0 = zeros(rowsA,1);
i = 1;
while i <= nmax
    xnew = (inv(w*L+D)*((1-w)*D - w*U)*x0 + w*inv(w*L+D)*b);
    x0 = xnew;
    i = i + 1;
end
sol = xnew;
end

