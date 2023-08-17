
function [A] = matrixN(N,dig,und,ovr)
A = dig*eye(N) + und*diag(ones(1,N-1),-1) + ovr*diag(ones(1,N-1),1);
end


















