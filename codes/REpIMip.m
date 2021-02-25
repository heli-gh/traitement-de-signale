%code en octave 
%pkg load image, pkg load signal.
w=2*pi*200;
dt=0.1/w;

t=-2*pi/w:dt/w:2*pi/w;


f=cos(w.*t)+1i.*sin(w*t);%interval de t est forcément multiple de période, fait bien attetion!!!
[cr,b]=xcorr(f);
cv=conv(f,f);
y1=real(f);
z1=imag(f);
y2=real(cr);
z2=imag(cr);
y3=real(cv);
z3=imag(cv);
y4=-real(cv);
z4=-imag(cv);


subplot(2,2,1);

plot3(t,y1,z1);
grid;
title('f(t)');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
subplot(2,2,2);
plot3(b,y2,z2);
grid;
title('Auto-corrélation');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
subplot(2,2,3);
plot3(b,y3,z3);
grid;
title('Auto-covolution');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');
subplot(2,2,4);
plot3(b,y4,z4);
grid;
title('Lopposé de auto-covolution');
xlabel('temps ');
ylabel('réel');
zlabel('imaginaire');

saveas(gcf,'REpIMip1','png');


