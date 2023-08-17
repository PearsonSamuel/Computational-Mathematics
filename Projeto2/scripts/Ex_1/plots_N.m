function [z] = plots_N(conj,m,eps,nmax,x0)
clf
t=conj(:,1);
y=conj(:,2);
x=linspace(-2.5,2.5,1000);
z=c1_N(conj,m,eps,nmax,x0);
yfun=m(z(1),z(2),x);
hold on;
plot(x,yfun)
plot(t,y,"r*")
xlabel("t")
ylabel("y")
hold off;

%com 5 pts:
%fazer
%conj=[[-2.3;-1.2;0,1,1.3],[0.1;0.6;2;5;7];
% plots_N(conj,m,10^-5,1000,[5;5])
%com 6 pts:
%fazer
%conj2=[conj;[1.2,55]];
%plots_N(conj2,m,10^-5,1000,[5;5])