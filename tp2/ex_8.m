load Ex8.mat;

x = Data8(:,1);
y = Data8(:,2);
z = Data8(:,3);

espZ = mean(z);

varz = var(z);

EQM_1 = 0;
for i = 1:200
  EQM_1 = EQM_1 + ((z(i)-espZ)*(z(i)-espZ));
end

EQM_1 = EQM_1/200;

# EQM_1 = 4.9797



a2 = cov(x,z)(1,2)/var(x);
b2 = mean(z) - a2*mean(x);

EQM_2 = 0;

for i = 1:200
  EQM_2 = EQM_2 + ((z(i) - (a2*x(i) + b2))*(z(i) - (a2*x(i) + b2)));
end

EQM_2 = EQM_2 / 200;

# EQM_2 = 4.0474


a3 = cov(y,z)(1,2)/var(y);
b3 = mean(z) - a3*mean(y);

EQM_3 = 0;

for i = 1:200
  EQM_3 = EQM_3 + ((z(i) - (a3*y(i) + b3)) * (z(i) - (a3*y(i) + b3)));
end

EQM_3 = EQM_3 / 200;

# EQM_3 = 4.9790

figure(1);
plot(a2*x + b2,'.');

figure(2);
plot(a3*x +b3, '.');
