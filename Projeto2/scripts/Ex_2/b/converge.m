
function [res] = converge(A,w)

D = diag(diag(A));
L = tril(A) - D;
U = triu(A) - D;

raio = max(abs(eig(inv(D+w*L)*((1-w)*D - w*U)))); 


if raio >= 1
    res = "O modelo não converge";
    else 
        res = "O modelo converge";

end
end
