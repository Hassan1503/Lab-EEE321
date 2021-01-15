clc; clear all;

t=0:0.001:3;
n=0;
f=1;
x=sin(2*pi*f*t);
y=-x;

subplot(4,1,1);
plot(t,x,'k--','linewidth',2);
grid on;
legend('Input AC Signal');

subplot (4,1,2);
plot(t,y,'g','linewidth',2);

grid on;
legend('180 Degree Phase Shifted Signal');

for i=1:1:length(t)
    if(x(i)>=n)
        z(i)=x(i);
    else
        z(i)=n;
    end
end
subplot(4,1,3);
plot(t,z,'r','linewidth',2)
ylim([-1 1])
grid on;
legend('Half Wave Rectified Signal');

for i=1:1:length(t)
    if (x(i)>=n)
        w(i)=x(i);
    else
        w(i)=-x(i);
    end
end
subplot(4,1,4);
plot (t,w,'b','linewidth',2);
ylim([-1 1])
grid on;
legend('Full Wave Rectified Signal');


        