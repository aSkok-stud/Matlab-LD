% Aleksandr Skokunov
% EKf-25
% Data: 2026-09-14

% 1
clear all
clc

a = -pi:0.7:2*pi;
b = cos(a);

ats = a.^b
%% 2
clear all
clc

X_mn = [exp(5) exp(-1i/exp(1)) log(1); log(pi) -2 -sin(pi)];
X_1n = [X_mn(2, 1)^2 X_mn(1, 3) X_mn(2, 3)^2];

X = [X_1n; X_mn];

ats = det(X)
%% 3
clear all
clc

A = 8;
f = 5;
o = 1.8;
U_1 = 5;
U_2 = 3;

t = 0:0.005:1.5;
n = o*randn(size(t));
s = A*cos(2*pi*f*t);

virs = s(s>U_1);

filt_s = s;
filt_s(s<U_2) = 0;

dydis = size(s)
virs_dydis = size(virs)

did = max(filt_s)
maz = min(filt_s)
%% P1
clear all
clc

A = input("Įveskite vektorių A: ");
A_rev = A(end:-1:1);

B = [A A_rev];

disp("Vektorius B yra:");
disp(B)
