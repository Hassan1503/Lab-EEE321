t = 0:0.001:3; % time variable
fs = 1500;
fc = 5; % frequency of carrier signal
fm = 1; % frequency of message signal
kpm = pi/2; % phase deviation constant
mt = square(2*pi*fm*t);
ct = cos(2*pi*fc*t);
x = pmmod(mt,fc,fs,kpm);
y = abs(pmdemod(x,fc,fs,kpm));
subplot(4,1,1)
plot(t,mt,'b','linewidth',2); grid on;
title('Message Signal');
axis([0 3 -1 3]);
subplot(4,1,2)
plot(t,ct,'r','linewidth',2); grid on;
title('Carrier Signal');
subplot(4,1,3)
plot(t,x,'g','linewidth',2); grid on;
title('Phase Modulated Signal');
subplot(4,1,4)
plot(t,y,'m','linewidth',2); grid on;
title('Phase Demodulated Signal');