
function C = matrixit(A,w)

D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

C = inv(w*L+D)*((1-w)*D-w*U);

end