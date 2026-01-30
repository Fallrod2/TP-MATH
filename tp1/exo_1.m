# init variable

load Ex1.mat;

n = 100;
t = linspace(0, 2*pi, n);
us = [cos(t); sin(t)];

# init phi func

phia = [];

for k = 1:n
  u = [us(1,k);us(2,k)];
  tu = transpose(u);
  phia = [phia, tu*A*u];
end

phib = [];

for k = 1:n
  u = [us(1,k);us(2,k)];
  tu = transpose(u);
  phib = [phib, tu*B*u];
end

phic = [];

for k = 1:n
  u = [us(1,k);us(2,k)];
  tu = transpose(u);
  phic = [phic, tu*C*u];
end

# max phia 2, min phib 1 donc definie positive -> prod scalaire
# plot(t,phia);

# max phia 2, min phib 0 exclu donc definie positive -> pas prod scalaire
# plot(t,phib);

# max phia 2, min phib -1 donc non definie positive -> pas prod scalaire;
# plot(t,phic);
# grid;

# Diagonalisation de A,B et C;

[PA, DA] = eigs(A)
[PB, DB] = eigs(B)
[PC, DC] = eigs(C)

# On remarque que les valeurs propres sont les maxs et min des fonction,
# On vois que B a pour valeurs propre -5*10^-25, donc negatif en un point,
# donc pas definie positive, donc il n'y a que le PHIA qui est un prod scal
