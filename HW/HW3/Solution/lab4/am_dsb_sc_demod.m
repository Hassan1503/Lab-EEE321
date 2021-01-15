%DSB-SC vs SSB Time Domain Signals
clc; clear all;
Fs= 10000; % Sampling rate: 8000 samples per second.
Fc = 400; % Carrier frequency in Hz
t = [0: 1: 0.2*Fs]/Fs; % Sampling times for .2 second
x = sin(2*pi*5*t) + 2*cos(2*pi*30*t);
y = ammod(x,Fc,Fs); % DSB-SC signal
s1 = amdemod(y,Fc,Fs); % Demodulation of DSB-SC AM signal
figure(2);
subplot(3,1,1);
plot(t,y);
title('DSB-SC Modulated Signal');
subplot(3,1,2);
plot(t,x,'r');
title('Original or Message Signal');
subplot(3,1,3);
plot(t,s1);
title('DSB-SC Demodulated Signal');