load Ex9.mat;

x = Data9(:,1);
y = Data9(:,2);
z = Data9(:,3);

n = 200;

b0 = mean(z);

EQM1 = 0;

for i = 1:200
  EQM1 = EQM1 + (z(i) - b0).^2;
end

EQM1 = EQM1/200;

# EQM1 = 5.0234

#methode 1 | cond = 1.069*10^6 | EQM = 3.9797
one = linspace(1,1,n);

M = [x, transpose(one)];

t1 = M\z;
a1 = t1(1);
b1 = t1(2);

EQM1_1 = 0;

for i = 1:200
  EQM1_1 = EQM1_1 + ((z(i)-(a1*x(i)+b1)).^2);
end

EQM1_1 = EQM1_1/200;
con1_1 = cond(M);

#methode 2 | cond = 1 | EQM = 3.9797

xc = x - mean(x);
zc = z - mean(z);

a2 = xc\zc;
b2 = mean(z) - a2*mean(x);

EQM1_2 = 0;

for i = 1:200
  EQM1_2 = EQM1_2 + (z(i)-(a2*x(i)+b2)).^2;
end

EQM1_2 = EQM1_2/200;

cond(xc);
