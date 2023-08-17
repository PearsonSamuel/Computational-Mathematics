

% 1) A = N5  -----------------------------------------------------------

A5 = N5;
matrixit(A5,0.5);
% exemplo:
%     0.5000    0.2500         0         0         0
%     0.1250    0.5625    0.2500         0         0
%     0.0312    0.1406    0.5625    0.2500         0
%     0.0078    0.0352    0.1406    0.5625    0.2500
%     0.0020    0.0088    0.0352    0.1406    0.5625

raioespetral(matrixit(A5,0.25));
% 0.9624
raioespetral(matrixit(A5,0.5));
% 0.9140
raioespetral(matrixit(A5,0.75));
% 0.8482
raioespetral(matrixit(A5,1));
% 0.7500
raioespetral(matrixit(A5,1.25));
% 0.5603
raioespetral(matrixit(A5,1.5));
% 0.5000
raioespetral(matrixit(A5,1.75));
% 0.7500

% raio espetral para w aleatório em (0,2)
raioespetral(matrixit(A5,2*rand()));


% w ótimo para A5
wopt(A5);
% 1.3333


% 2) A = N10  -----------------------------------------------------------

A10 = N10;

raioespetral(matrixit(A10,0.25));
% 0.9885
raioespetral(matrixit(A10,0.5));
% 0.9733
raioespetral(matrixit(A10,0.75));
% 0.9522
raioespetral(matrixit(A10,1));
% 0.9206
raioespetral(matrixit(A10,1.25));
% 0.8663
raioespetral(matrixit(A10,1.5));
% 0.7280
raioespetral(matrixit(A10,1.75));
% 0.7500

% raio espetral para w aleatório em (0,2)
raioespetral(matrixit(A10,2*rand()));

% w ótimo para A10
wopt(A10);
% 1.5604



% 3) A = N15  -----------------------------------------------------------

A15 = N15;

raioespetral(matrixit(A15,0.25));
% 0.9945
raioespetral(matrixit(A15,0.5));
% 0.9873
raioespetral(matrixit(A15,0.75));
% 0.9771
raioespetral(matrixit(A15,1));
% 0.9619
raioespetral(matrixit(A15,1.25));
% 0.9363
raioespetral(matrixit(A15,1.5));
% 0.8804
raioespetral(matrixit(A15,1.75));
% 0.7500

% raio espetral para w aleatório em (0,2)
raioespetral(matrixit(A15,2*rand()));


% w ótimo para A15
wopt(A15);
% 1.6735





% 4) A = N20  -----------------------------------------------------------

A20 = N20;

raioespetral(matrixit(A20,0.25));
% 0.9968
raioespetral(matrixit(A20,0.5));
% 0.9926
raioespetral(matrixit(A20,0.75));
% 0.9867
raioespetral(matrixit(A20,1));
% 0.9778
raioespetral(matrixit(A20,1.25));
% 0.9629
raioespetral(matrixit(A20,1.5));
% 0.9317
raioespetral(matrixit(A20,1.75));
% 0.7500

% raio espetral para w aleatório em (0,2)
raioespetral(matrixit(A20,2*rand()));


% w ótimo para A20
wopt(A20);
% 1.7406




% 5) A = N25  -----------------------------------------------------------

A25 = N25;

raioespetral(matrixit(A25,0.25));
% 0.9979
raioespetral(matrixit(A25,0.5));
% 0.9951
raioespetral(matrixit(A25,0.75));
% 0.9913
raioespetral(matrixit(A25,1));
% 0.9855
raioespetral(matrixit(A25,1.25));
% 0.9757
raioespetral(matrixit(A25,1.5));
% 0.9557
raioespetral(matrixit(A25,1.75));
% 0.8756

% raio espetral para w aleatório em (0,2)
raioespetral(matrixit(A25,2*rand()));


% w ótimo para A25
wopt(A25);
% 1.7849






