clc; clear all; close all;
t=0:0.001:3;
%m_index = input('enter the value of modulation index >> ')
m_index=.6
Am = 2;
Ac = Am/m_index;
fm=1;
fc=20;
%mt = cos(2*pi*fm*t);
mt=Am*sin(2*pi*fm*t) 
%ct = cos(2*pi*fc*t);
ct=Ac*sin(2*pi*fc*t) 
st = (1+m_index*mt).*(Ac*ct);
subplot(3,1,1) % plotting modulating signal
plot(t,mt); grid on;
title('Modulating Signal')
subplot(3,1,2) % plotting carrier signal
plot(t,ct,'r'); grid on;
title('Carrier Signal')
subplot(3,1,3) % plotting AM signal
plot(t,st); grid on;
title(['AM Signal for Modulation Index = ', num2str(m_index)])