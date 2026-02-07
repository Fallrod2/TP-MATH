A2 = [2, 4];
B2 = [4, 1.8];
C2 = [2.5, 3];

tA2 = (130*pi)/180;
tB2 = (-40*pi)/180;
tC2 = (150*pi)/180;

M2 = [-sin(tA2), cos(tA2);
      -sin(tB2), cos(tB2);
      -sin(tC2), cos(tC2)];

Y2 = [-sin(tA2)*A2(1) + cos(tA2)*A2(2);
      -sin(tB2)*B2(1) + cos(tB2)*B2(2);
      -sin(tC2)*C2(1) + cos(tC2)*C2(2)];

Pos_navire_2 = M2 \ Y2;

k = -5:0.1:5;
draw_line = @(P, th) plot(P(1) + k * cos(th), P(2) + k * sin(th));

figure(2);
hold on;

draw_line(A2, tA2);
draw_line(B2, tB2);
draw_line(C2, tC2);

plot(Pos_navire_2(1), Pos_navire_2(2), 'rx', 'MarkerSize', 5, 'LineWidth', 2);
plot(A2(1), A2(2), 'ko');
text(A2(1)+0.2, A2(2), "Phare 1");

plot(B2(1), B2(2), 'ko');
text(B2(1)+0.2, B2(2), "Phare 2");

plot(C2(1), C2(2), 'ko');
text(C2(1)+0.2, C2(2), "Phare 3");

text(Pos_navire_2(1)+0.2, Pos_navire_2(2), "Navire");
axis equal;
grid on;

# Calcul Erreur
Err2 = 0;

for i = 1:4
    bruit = (10 * rand(3,1) - 5) * pi / 180;

    tA_b = tA2 + bruit(1);
    tB_b = tB2 + bruit(2);
    tC_b = tC2 + bruit(3);

    M_b = [-sin(tA_b), cos(tA_b);
           -sin(tB_b), cos(tB_b);
           -sin(tC_b), cos(tC_b)];

    Y_b = [-sin(tA_b)*A2(1) + cos(tA_b)*A2(2);
           -sin(tB_b)*B2(1) + cos(tB_b)*B2(2);
           -sin(tC_b)*C2(1) + cos(tC_b)*C2(2)];

    Pos_b = M_b \ Y_b;

    plot(Pos_b(1), Pos_b(2), 'b*');

    Err2 = Err2 + norm(Pos_b - Pos_navire_2)^2;
end
hold off;

Cond2 = cond(M2);

# Affichage résultats finaux dans la console
Err2
Cond2
