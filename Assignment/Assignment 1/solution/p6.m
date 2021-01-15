t=0:.01:3;
f=1;
x=square(2*pi*f*t);
y=sin(2*pi*f*t);
add=x+y;
sub=x-y;
figure
subplot(4,1,1)
plot(t,x)
axis([0 3 -2 2]);
grid on
subplot(4,1,2)
plot(t,y)
axis([0 3 -2 2]);
grid on
subplot(4,1,3)
plot(t,add)
axis([0 3 -2 2]);
grid on
subplot(4,1,4)
plot(t,sub)
axis([0 3 -2 2]);
grid on