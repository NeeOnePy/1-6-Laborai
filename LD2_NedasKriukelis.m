clear
close all

x = (-5:0.6:5);

y = sqrt(x);

y_pask =  y(length(y));

z = (x .* y) / y_pask;

disp('Vienmaciai masyvai: z ='); disp(z);
%% 
clear
close all

X = [2*sqrt(2) log(2);
    2^5       2*pi;
    3*sqrt(2) exp(2)];

v = [2*sqrt(2); 5; 2^(-2)];
X = [X v];

D = det(X);

disp('Matrica X po stulpelio iterpimo:'); disp(X);
disp('Determinantas:'); disp(D);
%% 
clear
close all

A = 8;
f = 5;
sigma = 1.8;
U1 = 5;
U2 = 3;

t = 0:0.005:1.5;
s = A * cos(2*pi*f*t);
n = sigma * randn(size(t));
sn = s + n;

atrinktos = sn(sn > U1);

sf = sn;
sf(abs(sf) < U2) = 0;

dydis_nefiltr = length(sn);

dydis_atrinktu = length(atrinktos);

sf_max = max(sf);
sf_min = -max(-sf);

disp('Nefiltruoto signalo dydis:'); disp(dydis_nefiltr);
disp('Atrinktu reiksmiu >U1 dydis:'); disp(dydis_atrinktu);
disp('Filtruoto signalo didziausia reiksme:'); disp(sf_max);
disp('Filtruoto signalo maziausia reiksme:'); disp(sf_min);
%% 
clear
close all

A = input('Iveskite vektoriu A =');

B = A(2:2:end);

C = A(1:2:end);
C = C(end:-1:1);

disp('vektorius B yra:'); disp(B);
disp('vektorius C yra:'); disp(C);