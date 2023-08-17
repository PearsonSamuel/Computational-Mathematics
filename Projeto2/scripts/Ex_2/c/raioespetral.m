
function [r] = raioespetral(C)
lvalprop = eig(C);
r = max(abs(lvalprop));
end