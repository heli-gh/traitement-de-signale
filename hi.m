clear all;
close all;
clc;
t=-500:1:500;
f0=0.04;
x = rectpuls(t,800).*cos(f0*t);
% .* permet de faire la multiplication entre deux scalaires et non la , → multiplication entre deux matrices lignes
figure(1);clf
plot(t,x,'b');
grid;
title('Allure temporelle');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('signal x(t)');
[ACx,lagsx] = xcorr(x); % auto-corrélation de x
CVx = conv(x,x);
% auto-convolution de x
figure(2);clf
plot(lagsx,CVx,'g');
grid;
title('auto-convolution');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('auto-convolution de x');
g = rectpuls(lagsx,1600).*((1/2*f0)*sin(f0*(2*400-
abs(lagsx)))+(0.5)*cos(f0*lagsx).*(2*400-abs(lagsx)));
figure(3);clf
plot(lagsx,g,'b');
grid;
title('Allure temporelle');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('signal g(t)');