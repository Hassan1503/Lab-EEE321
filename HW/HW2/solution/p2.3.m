clc; clear
t=0:0.1:3;
x=sin(2*pi*t);
stem(t,x);
legend('sin(2*pi*t)');
grid on;
