%code en octave 
%pkg load image, pkg load signal.
w=2*pi*200;
dt=.2/w;

t=[-8*pi/w:dt/w:8*pi/w];  %interval de t est forcément multiple de période, fait bien attetion!!!
f=sin(w.*t)+cos(3*w.*t)+1i.*(cos(w.*t)+cos(2*w.*t)+sin(4*w.*t));
g=cos(2*w.*t)+sin(3*w.*t)+1i.*(cos(w.*t)+sin(2*w.*t)+sin(4*w.*t));
[a,b]=xcorr(f,g);
[c,b]=xcorr(g,f);
y0=real(g);
z0=imag(g);
y1=real(f);
z1=imag(f);
y2=real(a);
z2=imag(a);
y3=real(c);
z3=imag(c);
y4=real(c);
z4=-imag(c);


subplot(2,2,1);
plot3(t,y0,z0,'b');hold on;
plot3(t,y1,z1,'r');
grid;
title('f(t)');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
subplot(2,2,2);
plot3(b,y2,z2);
grid;
title('Auto-corrélation Rfg(t)');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
subplot(2,2,3);
plot3(b,y3,z3);
grid;
title('Auto-corrélation Rgf(t)');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
subplot(2,2,4);
plot3(-b,y4,z4);
grid;
title('Conjugées de auto-corrélation de Rgf(-t)');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
saveas(gcf,'coim','png');


