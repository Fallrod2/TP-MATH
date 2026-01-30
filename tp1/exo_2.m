# init variables

load Ex1.mat;

n = 100;

t = linspace(0, 2*pi, n);
Cercle = [cos(t); sin(t)];

f = A*Cercle;
figure(1), plot(f(1,:),f(2,:));

g = B*Cercle;
figure(2), plot(g(1,:),g(2,:));

h = C*Cercle;
figure(3), plot(h(1,:),h(2,:));

[PA, DA] = eigs(A);
[PB, DB] = eigs(B);
[PC, DC] = eigs(C);


