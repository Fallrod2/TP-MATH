A = [2, 4];
B = [4, 3];
C = [2.5, 2];

tA = (145*pi)/180;
tB = 0;
tC = (-95*pi)/180;


k = linspace(-5, 5,100);

DA = [A(1)+k*cos(tA); A(2)+k*sin(tA)];
DB = [B(1)+k*cos(tB); B(2)+k*sin(tB)];
DC = [C(1)+k*cos(tC); C(2)+k*sin(tC)];

hold on;
plot(DA(1,:),DA(2,:));
plot(DB(1,:),DB(2,:));
plot(DC(1,:),DC(2,:));
hold off;
