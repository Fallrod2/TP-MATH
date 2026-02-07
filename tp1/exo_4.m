load Ex4.mat;

[PA, DA] = eig(A);

[X, Y, Z] = sphere(40);
Sphere = [X(:)'; Y(:)'; Z(:)'];

InvSqrtD = diag([1/sqrt(DA(1,1)), 1/sqrt(DA(2,2)), 1/sqrt(DA(3,3))]);
Trans = PA * InvSqrtD;

f = Trans * Sphere;

fX = reshape(f(1, :), size(X));
fY = reshape(f(2, :), size(Y));
fZ = reshape(f(3, :), size(Z));

figure(1);
mesh(fX, fY, fZ);
hidden off;
axis equal;
grid on;
hold on;

title('Sphère unité pour la norme ||.||_A');
xlabel('x'); ylabel('y'); zlabel('z');

PA1 = PA(:,1);
PA2 = PA(:,2);
PA3 = PA(:,3);

LA1 = (1/sqrt(DA(1,1))) * PA1;
LA2 = (1/sqrt(DA(2,2))) * PA2;
LA3 = (1/sqrt(DA(3,3))) * PA3;

plot3([0, LA1(1)], [0, LA1(2)], [0, LA1(3)], 'r-', 'LineWidth', 2);
text(LA1(1), LA1(2), LA1(3), 'v_1');

plot3([0, LA2(1)], [0, LA2(2)], [0, LA2(3)], 'g-', 'LineWidth', 2);
text(LA2(1), LA2(2), LA2(3), 'v_2');

plot3([0, LA3(1)], [0, LA3(2)], [0, LA3(3)], 'b-', 'LineWidth', 2);
text(LA3(1), LA3(2), LA3(3), 'v_3');

hold off;

