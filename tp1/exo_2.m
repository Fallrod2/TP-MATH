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
PA1 = [PA(1,1), PA(2,1)];
PA2 = [PA(1,2); PA(2,2)];

isOrtPA = PA1*PA2;

#isOrtPA = 0, donc les vecteurs propres de la matris A sont orthogonale et forme
# une base orthonorme

[PB, DB] = eigs(B);
PB1 = [PB(1,1), PB(2,1)];
PB2 = [PB(1,2); PB(2,2)];

isOrtPB = PB1*PB2;

#isOrtPA = 0, donc les vecteurs propres de la matris A sont orthogonale et forme
# une base orthonorme

[PC, DC] = eigs(C);
PC1 = [PC(1,1), PC(2,1)];
PC2 = [PC(1,2); PC(2,2)];

isOrtPC = PC1*PC2;

#isOrtPA = 0, donc les vecteurs propres de la matris A sont orthogonale et forme
# une base orthonorme

LA1 = DA(1,1)*transpose(PA1);
LA2 = DA(2,2)*PA2;


figure(1);
hold on;
plot([0,LA1(1)], [0,LA1(2)], 'g-', 'LineWidth', 2);
plot([0,LA2(1)], [0,LA2(2)], 'r-', 'LineWidth', 2);
axis equal;
hold off;



LB1 = DB(1,1)*transpose(PB1);
LB2 = DB(2,2)*PB2;


figure(2);
hold on;
plot([0,LB1(1)], [0,LB1(2)], 'g-', 'LineWidth', 2);
plot([0,LB2(1)], [0,LB2(2)], 'r-', 'LineWidth', 2);
axis equal;
hold off;




LC1 = DC(1,1)*transpose(PC1);
LC2 = DC(2,2)*PC2;


figure(3);
hold on;
plot([0,LC1(1)], [0,LC1(2)], 'g-', 'LineWidth', 2);
plot([0,LC2(1)], [0,LC2(2)], 'r-', 'LineWidth', 2);
axis equal;
hold off;


