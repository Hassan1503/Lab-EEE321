clc; clear all;
Fs= 8000; % Sampling rate: 8000 samples per second.
Fc = 300; % Carrier frequency in Hz
t = [0: 1: 0.2*Fs]/Fs; % Sampling times for .2 second
x = sin(2*pi*10*t) + 2*cos(2*pi*20*t);
z = ssbmod(x,Fc,Fs); % SSB signal
s2 = ssbdemod(z,Fc,Fs); % Demodulation of SSB AM signal
figure;
subplot(4,1,1)
plot(t,x)
title('Message Signal')
subplot(4,1,2);
plot(t,z);
title('SSB Modulated Signal');
subplot(4,1,3);
plot(t,x,'r');
title('Original or Message Signal');
subplot(4,1,4);
plot(t,s2);
title('SSB Demodulated Signal');