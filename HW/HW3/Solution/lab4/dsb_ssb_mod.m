clc; clear all;
Fs= 10000; % Sampling rate: 8000 samples per second.
Fc = 500; % Carrier frequency in Hz
t = [0: 1: 0.2*Fs]/Fs; % Sampling times for .2 second
x = sin(2*pi*15*t) + 2*cos(2*pi*25*t); % message signal
y = ammod(x,Fc,Fs); % DSB-SC signal
z = ssbmod(x,Fc,Fs); % SSB signal
figure(1);
subplot(2,1,1);
plot(t,x,'r')
title('Original or Message Signal');
%subplot(3,1,2);
hold on
plot(t,y)
title('DSB-SC Modulated Signal');
subplot(2,1,2);
plot(t,x,'r')
title('Original or Message Signal');
hold on
plot(t,z)
title('SSB Modulated Signal');
