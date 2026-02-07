A = [2, 4];
B = [4, 3];
C = [2.5, 2];

tA = (145*pi)/180;
tB = 0;
tC = (-95*pi)/180;

k = -5:0.1:5;

draw_line = @(P, th) plot(P(1) + k * cos(th),P(2) + k * sin (th));

hold on;
draw_line(A, tA);
draw_line(B, tB);
draw_line(C, tC);
hold off;

C1 = [-sin(tA), cos(tA);
      -sin(tB), cos(tB);
      -sin(tC), cos(tC)];

C2 = [-sin(tA)*A(1)+ cos(tA)*A(2);
      -sin(tB)*B(1)+ cos(tB)*B(2);
      -sin(tC)*C(1)+ cos(tC)*C(2)];

Pos_navire = C1\C2;

hold on;
plot(Pos_navire(1),Pos_navire(2), 'rx', 'MarkerSize', 5, 'LineWidth', 2);
plot(A(1),A(2), 'ko');
text(A(1) + 0.2, A(2), "Phare 1");
plot(B(1),B(2), 'ko');
text(B(1) + 0.2, B(2), "Phare 2");
plot(C(1),C(2), 'ko');
text(C(1) + 0.2, C(2), "Phare 3");
text(Pos_navire(1) + 0.2, Pos_navire(2), "Navire");
axis equal;
grid on;
hold off;

