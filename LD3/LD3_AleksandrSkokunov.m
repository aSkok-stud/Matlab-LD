% Aleksandr Skokunov
% EKf-25
% Data: 2026-09-21

% 1 užduotis
clear all
clc

t = linspace(-pi, pi, 50);

figure
subplot(2, 1, 1)
plot(t, sin(t), 'r--')
xlim([min(t) max(t)])
ylim([min(sin(t)) max(sin(t))])
grid on
title('a)')
xlabel('t')
ylabel('sin(t)')

x = linspace(-pi, pi, 50);
y1 = -x.^2 + 9;
y2 = x.^3 - 2*x.^2 - 9;

subplot(2, 1, 2)
hold on
plot(x, y1, 'b')
plot(x, y2, 'g')
xlim([min(x) max(x)])
ylim([min(y2) max(y1)])
grid on
legend('y(x) = -x^2+9', 'y(x) = x^3-2*x^2-9', ... 
        'Location', 'southeast')
title('b)')
xlabel('x')
ylabel('y(x)')

%% 2 užduotis
clear all
clc

grades = [10 6 8 4 7 9; 7 2 4 6 9 10; ... 
            5 3 7 2 1 7; 10 9 6 10 8 10];

figure
subplot(2, 1, 1)
bar(grades)
ylim([0 10])
title('a)')
xlabel('L.D.')
ylabel('Pažymis')
legend('A. S.', 'A. K.', 'S. B.', 'V. K.', 'D. J.', 'T. V.', ... 
        'Location', 'eastoutside')

subplot(2, 1, 2)
stem(mean(grades))
ylim([0 10])
title('b)')
xlabel('Studentas')
ylabel('Vidurkis')

%% Papildoma užduotis
clear all
clc

A = 8;
f = 5;
o = 1.8;
U_1 = 5;
U_2 = 3;

t = 0:0.005:1.5;
n = o*randn(size(t));
s = A*cos(2*pi*f*t)+n;

virs = s;
virs(not(s>U_2)) = NaN;

filt_s = s;
filt_s(s<U_2) = 0;


figure
subplot(2, 1, 1)
hold on
plot(t, s, 'r', 'LineWidth', 1)
plot(t, filt_s, 'b--', 'LineWidth', 1)
yline(U_1, 'g')
yline(U_2, 'g')
xlim([min(t) max(t)])
ylim([min(s) max(s)])
title('a)')
xlabel('t')
ylabel('s(t)')
legend('Pradinis signalas', 'Filtruotas signalas', ...
        'Filtravimo riba', 'Location','eastoutside')

subplot(2, 1, 2)
stem(t, virs, 'g')
hold on

x = t;
y = virs;

valid = ~isnan(y);
yv = y(valid);
xv = x(valid);

yMin = min(yv);
yMax = max(yv);
xMin = find(y==yMin);
xMax = find(y==yMax);

plot(x(xMin), y(xMin), 'rv', 'MarkerFaceColor', 'r', 'MarkerSize', 10)
plot(x(xMax), y(xMax), 'b^', 'MarkerFaceColor', 'b', 'MarkerSize', 10)
hold off

title('b)')
xlabel('t')
ylabel('s(t)>U_1')