# Initialisation des donnees

A = [1,-1;
     2, 1;
     1, 1];

U = [3;2;-1];

# vect de F :

e1 = [1;2;1];
e2 = [-1;1;1];

X = A\U;

x = X(1);
y = X(2);

# Calcule de pfu

pfu = x * e1 + y * e2;

figure(1);
hold on;
[a, b] = meshgrid(-2:0.5:2, -2:0.5:2);


plot3([0,pfu(1)],[0,pfu(2)],[0,pfu(3)]);
plot3([0,U(1)],[0,U(2)],[0,U(3)]);
plot3([U(1),pfu(1)],[U(2),pfu(2)],[U(3),pfu(3)]);

view(10,30)
