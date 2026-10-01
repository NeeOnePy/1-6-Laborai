clear
close all

t = linspace(-pi, pi, 50);
y = sin(t);

figure(1);
plot(t, y, 'r--');
xlabel('t'); ylabel('y');
title('y(t) = sin(t)');
legend('sin(t)');
grid on;
%% 
clear
close all

x  = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2*x.^2 - 9;

figure(2);
plot(x, y1, 'b--', x, y2, 'g--', 'LineWidth', 1.5);
xlabel('x'); ylabel('y');
title('Funkciju grafikai');
legend('y = -x^2 + 9', 'y = x^3 - 2x^2 - 9');
grid on;
%% 

clear
close all

vardai = {'Jonas', 'Ona', 'Petras', 'Rūta', 'Tomas', 'Lina'};


G = randi([4 10], 6, 4);

figure(3);


subplot(2, 1, 1);
bar(G', 'grouped');
xlabel('Laboratorinis darbas');
ylabel('Pazymys');
title('Studentu pazymiai');
ylim([0 10]);
legend(vardai, 'Location', 'eastoutside');


subplot(2, 1, 2);
vidurkiai = mean(G);
stem(1:4, vidurkiai, 'filled');
xlabel('Laboratorinis darbas');
ylabel('Vidurkis');
title('Laboratoriniu darbu vidurkiai');
ylim([0 10]);
xticks(1:4);
grid on;
%% 

clear
close all

t  = linspace(0, 1, 500);
U  = 5*sin(2*pi*3*t) + 1.5*randn(size(t));
U1 = -2;  U2 = 3;
Uf = min(max(U, U1), U2);

violetine = [0.58 0 0.83];

figure('Name', 'Signalu grafinis atvaizdavimas');

subplot(2, 1, 1);
h1 = plot(t, U, '-.r');  hold on;
h2 = plot(t, Uf, '-k');
hU1 = yline(U1, 'Color', 'y', 'LineWidth', 2);
hU2 = yline(U2, '--b');
xlabel('Laikas t, s');
ylabel('Itampa U, V');
title('Pradinis ir filtruotas signalai', 'Color', violetine, 'FontSize', 14);
legend([h1 h2 hU1 hU2], {'Pradinis signalas', 'Filtruotas signalas', ...
    'Riba U_1', 'Riba U_2'}, 'Location', 'best');
grid on;
xlim([t(1) t(end)]);
ylim([min(U) - 1, max(U) + 1]);

idx = U > U1;
tv  = t(idx);
Uv  = U(idx);

subplot(2, 1, 2);
hs = stem(tv, Uv, 'r', 'MarkerSize', 3);  hold on;

imin = find(Uv == min(Uv));
imax = find(Uv == max(Uv));
hmin = plot(tv(imin), Uv(imin), 'ks', 'MarkerFaceColor', 'k', 'MarkerSize', 9);
hmax = plot(tv(imax), Uv(imax), '^', 'Color', [0 0.6 0], ...
    'MarkerFaceColor', [0 0.6 0], 'MarkerSize', 9);

xlabel('Laikas t, s');
ylabel('Itampa U, V');
title('Signalo reiksmes, virsijancios U_1', 'Color', violetine, 'FontSize', 14);
legend([hs hmin hmax], {'Reiksmes > U_1', 'Minimali reiksme', ...
    'Maksimali reiksme'}, 'Location', 'best');
grid on;
xlim([t(1) t(end)]);
ylim([min(U1, 0) - 0.5, max(Uv) + 0.5]);