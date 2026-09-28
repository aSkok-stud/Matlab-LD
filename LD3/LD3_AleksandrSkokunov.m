% Aleksandr Skokunov
% EKf-25
% Data: 2026-09-21

% 1
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

%% 2
clear all
clc

grades = [10 6 8 4 7 9; 7 2 4 6 9 10; ... 
            5 3 7 2 1 7; 10 9 6 10 8 10];

figure
subplot(2, 1, 1)
bar(grades)
title('a)')

subplot(2, 1, 2)
stem(mean(grades))