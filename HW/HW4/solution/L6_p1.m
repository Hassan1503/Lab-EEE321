t = 0:0.001:3; % time variable
fc = 5; % frequency of carrier signal
fm = 1; % frequency of message signal
kp = pi/2; % phase deviation constant
mt = 1 + square(2*pi*fm*t);
ct = cos(2*pi*fc*t);
st = cos(2*pi*fc*t + kp*mt);
subplot(3,1,1)
plot(t,mt,'b','linewidth',2); grid on;
title('Message Signal');
axis([0 3 -1 3]);
subplot(3,1,2)
plot(t,ct,'r','linewidth',2); grid on;
title('Carrier Signal');
subplot(3,1,3)
plot(t,st,'b','linewidth',2); grid on;
title('Phase Modulated Signal');