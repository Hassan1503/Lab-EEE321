clc; clear all; close all;
b = [0 1 1 0 1 0 1 0 1 1 0 1]; % digital bits
n = length(b);
mt = [];
for i = 0: 1: n-1;
mt( (i*100)+1: 1: ((i+1)*100)+1 ) = b(i+1);
end
t = 0: 0.01: n;
fc = 3;
kp=pi;
ct = sin(2*pi*fc*t); % carrier signal
psk = sin(2*pi*fc*t + kp.*mt); % PSK signal
subplot(3,1,1);
plot(t,ct, 'b', 'linewidth',2); grid on;
title('Carrier Wave');
ylim([-1.2 1.2]);
subplot(3,1,2);
plot(t,mt, 'r', 'linewidth',2); grid on;
title('Input Bit Stream');
ylim([-1.2 1.2]);
subplot(3,1,3);
plot(t,psk, 'b', 'linewidth',2); grid on;
title('PSK Wave');
ylim([-1.2 1.2]);