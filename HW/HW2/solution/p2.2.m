clc; clear all;
t=0:0.01:5;
f=3;
x= sin (2*pi*f*t).*(exp(t));
plot(t,x,'b','linewidth',2);
legend('e^t * sin(2*pi*f*t)');
ylim([-150 150]);
grid on;