function [z,n,g_z] = c1_GN(conj,m,eps,nmax,x0)
t=conj(:,1);
y=conj(:,2);
syms x1 x2
F=matlabFunction(m(x1,x2,t)-y);
j=matlabFunction(jacobian(F(x1,x2),[x1,x2]));
g=matlabFunction(0.5*sum((F(x1,x2)).^2));
x1=x0;
n=0;
p=1;
while n<nmax && norm(p) > eps   
    x0=x1;
    jf=j(x0(1),x0(2));
    Fx=F(x0(1),x0(2));
    p=linsolve(transpose(jf)*jf,-transpose(jf)*Fx);
    x1= x0 + p;
    n=n+1;
end
S= Sx(m,t,y);
Hg=transpose(j(x1(1),x1(2)))*j(x1(1),x1(2)) + S(x1(1),x1(2));
if any(eig(Hg)>0)
    disp("foi encontrado um mínimo local")
else
    disp("não foi encontrado um mínimo local")
end
z=x1;
    g_z=g(z(1),z(2))
    n
end
