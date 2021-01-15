clc; clear all;
t=0:0.001:3;
y=sawtooth(2*pi*t);

subplot(2,1,1);
plot(t,y,'b','linewidth',3);
axis([0 3 -2 2]);
grid on;

subplot(2,1,2);
x=-4:0.001:4;
rect1=heaviside(x+2)-2*heaviside(x-0)-heaviside(x-2)+2*heaviside(x-2);
plot(x,rect1,'linewidth',3);
grid on;
ylim([-1.5 1.5]);