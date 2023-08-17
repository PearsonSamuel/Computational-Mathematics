function [z,n,g_z] = c1_N(conj,m,eps,nmax,x0)
t=conj(:,1);
y=conj(:,2);
syms x1 x2
%função F
F=matlabFunction(m(x1,x2,t)-y); % ou m(x)
%função a minimizar:
g=matlabFunction(0.5*sum((F(x1,x2)).^2));
%jacobiana de F
j=matlabFunction(jacobian(F(x1,x2),[x1,x2]));
%matriz S
S= Sx(m,t,y);
%começar o método
x1=x0;
n=0;
p=1;
while n<nmax && norm(p) > eps
    x0=x1;
    Fx=F(x0(1),x0(2));
    jf=j(x0(1),x0(2));
    H=transpose(jf)*jf + S(x0(1),x0(2));
    p=linsolve(H,-transpose(jf)*Fx);
    x1= x0 + p ;
    n=n+1;
end
Hg=transpose(j(x1(1),x1(2)))*j(x1(1),x1(2)) + S(x1(1),x1(2));
if all(eig(Hg)>0)
    disp("foi encontrado um mínimo local")
else
    disp("não foi encontrado um mínimo local")
end
z=x1;
    g_z=g(z(1),z(2))
    n




