# init variable

load Ex1.mat;

[PA, DA] = eig(A);

lambda1 = DA(1,1);
lambda2 = DA(2,2);

t = linspace(0, 2*pi, 100);

x_prime = cos(t) ./ sqrt(lambda1);
y_prime = sin(t) ./ sqrt(lambda2);

X_prime = [x_prime; y_prime];

X = PA * X_prime;

x = X(1, :);
y = X(2, :);

figure(1);
hold on;

plot(x, y, 'b-', 'LineWidth', 2);

grid on;
axis equal;

title('Cercle unité pour la norme ||.||_A');
xlabel('x');
ylabel('y');

plot3([0, PA(1,1)/sqrt(lambda1)], [0, PA(2,1)/sqrt(lambda1)] , 'r-', 'LineWidth', 1.5);

plot3([0, PA(1,2)/sqrt(lambda2)], [0, PA(2,2)/sqrt(lambda2)], 'g-', 'LineWidth', 1.5);
legend('Cercle unité C', 'Axe propre 1', 'Axe propre 2');
