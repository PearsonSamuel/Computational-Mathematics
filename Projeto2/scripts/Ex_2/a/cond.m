
function [ncond] = cond(A)
invA = inv(A);
lvalprop = eig(A);
raioesp = max(abs(lvalprop));
lvalpropinv = eig(invA);
raioespinv = max(abs(lvalpropinv));

ncond = raioesp * raioespinv;

end
