
clear all;
close all;
clc;
t=-500:1:500;
x = rectpuls(t,800); % x(t) = 0 si t < -T/2 ou T/2 < t
y = rectpuls(t,400); % x(t) = 1 sinon
figure(1);clf
plot(t,y,'r',t,x,'b');
grid;
title('Allure temporelle');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('signal y(t)','signal x(t)');
[Cxy,lagsxy] = xcorr(x,y); % corrélation entre x et y
[ACx,lagsx] = xcorr(x); % auto-corrélation de x
[ACy,lagsy] = xcorr(y); % auto-corrélation de y
figure(2);clf
plot(lagsxy,ACx,'b');hold on;
plot(lagsxy,ACy,'r');hold on;
plot(lagsxy,Cxy,'c');
grid;
title('corrélation et auto-corrélations');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('auto-corrélation de x','auto-corrélation de y','corrélation entre x et, →y');
CVxy = conv(x,y); % convolution entre x et y
CVx = conv(x,x); % auto-convolution de x
figure(3);clf
plot(lagsxy,CVxy,'b');hold on;
plot(lagsxy,CVx,'r');
grid;
title('convolution et auto-convolution');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('convolution entre x et y','auto-convolution de x');