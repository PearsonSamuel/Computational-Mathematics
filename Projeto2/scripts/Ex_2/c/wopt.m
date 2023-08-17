
function [w] = wopt(A)

D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

lvalprop = eig(inv(D)*(L+U));
raiojacobi = max(abs(lvalprop));

w = 2/(1+sqrt(1-(raiojacobi)^2));
end