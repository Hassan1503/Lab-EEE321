clc; clear all; close all;
% declaring equations for Modulating Signal and Carrier Signal
t = 0:0.001:3;
fm = 1;
fc = 15;
%mt = 3*cos(2*pi*fm*t); % Modulating signal
mt=3*sin(2*pi*fm*t)
%ct = 2*cos(2*pi*fc*t); % Carrier signal
ct=2*sin(2*pi*fc*t)
st = mt.*ct;
subplot(3,1,1) % plotting modulating signal
plot(t,mt); grid on;
title('Modulating Signal')
subplot(3,1,2) % plotting carrier signal
plot(t,ct); grid on;
title('Carrier Signal')
subplot(3,1,3) % plotting AM signal
plot(t,st); grid on;
title('Amplitude Modulated Signal')