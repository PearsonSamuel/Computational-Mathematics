function [S] = Sx(m,t,y)
S=zeros(2,2);
for i=1:length(t)
    syms x1 x2
    f=m(x1,x2,t(i))-y(i);
    J=jacobian(f,[x1,x2]);
    H=jacobian(J,[x1,x2]);
    S=matlabFunction(S+ f*H);
end