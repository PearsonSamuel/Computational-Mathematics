function [er,ea] = erros(M,b,nmax)  
w=[0.5,0.75,1.25,1.5,1.75];
exato=linsolve(M,b);
Q=norm(exato);
ea=[];
er=[];
for i=1:5
v=SOR(M,b,w(i),nmax);
eabs=norm(exato-v);
ea=[ea eabs];
er=[er eabs/Q];
end
ea
end