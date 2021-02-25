
t=-500:1:500;
f0=0.05;
x = cos(f0*t); % x réel & pair
subplot(3,1,1);
plot(t,x,'b');
grid;
title('Allure temporelle');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('signal x(t)');

[C,lag] = xcorr(x); % auto-corrélation de x
subplot(3,1,2);
plot(lag,C,'r');
grid;
title('auto-corrélation');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('auto-corrélation de x');

CVx = conv(x,x); % auto-convolution de x
subplot(3,1,3);
plot(lag,CVx,'g');
grid;
title('auto-convolution');
xlabel('temps en secondes');
ylabel('amplitude du signal');
legend('auto-convolution de x');
saveas(gcf,'partie1','png');


