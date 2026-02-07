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
figure(1);
plot(t, phia, 'b-', 'LineWidth', 2);
grid on;
title('Graphe de t -> phi_A(u(t), u(t))');
xlabel('t (radians)');
ylabel('Valeur de la forme quadratique');
xlim([0 2*pi]);

# max phia 2, min phib 0 exclu donc definie positive -> pas prod scalaire
figure(2);
plot(t, phib, 'r-', 'LineWidth', 2);
grid on;
title('Graphe de t -> phi_B(u(t), u(t))');
xlabel('t (radians)');
ylabel('Valeur de la forme quadratique');
xlim([0 2*pi]);

# max phia 2, min phib -1 donc non definie positive -> pas prod scalaire;
figure(3);
plot(t, phic, 'g-', 'LineWidth', 2);
grid on;
title('Graphe de t -> phi_C(u(t), u(t))');
xlabel('t (radians)');
ylabel('Valeur de la forme quadratique');
xlim([0 2*pi]);

# Diagonalisation de A,B et C;

[PA, DA] = eigs(A)
[PB, DB] = eigs(B)
[PC, DC] = eigs(C)

# On remarque que les valeurs propres sont les maxs et min des fonction,
# On vois que B a pour valeurs propre -5*10^-25, donc negatif en un point,
# donc pas definie positive, donc il n'y a que le PHIA qui est un prod scalaire


