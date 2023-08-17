
function [lista] = detmatrix(A,w,N)
C = matrixit(A,w);
lista = [det(C) (1-w)^N];
end







