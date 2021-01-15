clc; clf; clear all; close all;
Fm = 5; 
Fc = 50;
Fs = 1000;
t = [0: Fs]/Fs; % Sampling times
dev = 10; % Frequency deviation in modulated signal
B = dev/Fm; % modulation index
x = sin(2*pi*Fm*t); % Message signal
y = fmmod(x,Fc,Fs,dev); % Modulated signal
z = fmdemod(y,Fc,Fs,dev); % Demodulated signal
N= 1000;
w = [(-N/2)+1 : N/2];
fm_s = abs(fftshift(fft(y,N)));
subplot(4,1,1);
plot(t,x,'linewidth',2); grid on;
title('Mesage signal')
subplot(4,1,2)
plot(t,y,'r','linewidth',1); grid on;
title('FM modulated signal')
subplot(4,1,3)
plot(t,z,'linewidth',2); grid on
title('FM demodulated signal')
subplot(4,1,4)
plot(w, fm_s, 'g'); % frequency response
title(['Frequency band for mod. index = ', num2str(B)])
xlim([-200 200])