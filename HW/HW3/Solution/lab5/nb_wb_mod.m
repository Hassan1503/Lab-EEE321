clc; clear all; close all;
fm = 3;
fc = 30;
t = 0:0.0001:0.1;
B1 = 0.5; % mod index for NBFM
B2 = 4; % mod index for WBFM
mt = sin(2*pi*fm*t);
ct = sin(2*pi*fc*t);
nbfm = cos(2*pi*fc*t + B1*sin(2*pi*fm*t)); % NBFM
wbfm = cos(2*pi*fc*t + B2*sin(2*pi*fm*t)); % WBFM
N=1000;
w = [(-N/2)+1 : N/2];
nbfm_s = abs(fftshift(fft(nbfm,N)));
wbfm_s = abs(fftshift(fft(wbfm,N)));
subplot(5,1,1)
plot (t,mt,'g');
title ('Message Signal');
subplot(5,1,2)
plot(t,nbfm,'r')
title('Narrow Band FM signal')
subplot(5,1,3)
plot(t,wbfm,'b')
title('Wide Band FM signal')
subplot(5,1,4)
plot(w, nbfm_s, 'r');
xlim([-200 200])
title('Frequency Band for Narrow Band FM')
subplot(5,1,5)
plot(w, wbfm_s, 'b');
xlim([-200 200])
title('Frequency Band for Wide Band FM')


clc; clear all; close all;
fm = 30;
fc = 300;
t = 0:0.0001:0.1;
B1 = 0.3; % mod index for NBFM
B2 = 6; % mod index for WBFM
mt = sin(2*pi*fm*t);
ct = sin(2*pi*fc*t);
nbfm = cos(2*pi*fc*t + B1*sin(2*pi*fm*t)); % NBFM
wbfm = cos(2*pi*fc*t + B2*sin(2*pi*fm*t)); % WBFM
N=1000;
w = [(-N/2)+1 : N/2];
nbfm_s = abs(fftshift(fft(nbfm,N)));
wbfm_s = abs(fftshift(fft(wbfm,N)));
subplot(5,1,1)
plot (t,mt,'g');
title ('Message Signal');
subplot(5,1,2)
plot(t,nbfm,'r')
title('Narrow Band FM signal')
subplot(5,1,3)
plot(t,wbfm,'b')
title('Wide Band FM signal')
subplot(5,1,4)
plot(w, nbfm_s, 'r');
xlim([-200 200])
title('Frequency Band for Narrow Band FM')
subplot(5,1,5)
plot(w, wbfm_s, 'b');
xlim([-200 200])
title('Frequency Band for Wide Band FM')