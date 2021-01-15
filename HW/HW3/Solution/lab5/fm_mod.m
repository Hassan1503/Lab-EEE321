clc; clear all; close all;
%fm = input('Enter the modulating signal frequency, fm = ');
%fc = input('Enter the carrier frequency, fc = ');
%m_index = input('Enter the Modulation index = ');
fm=1
fc=5
m_index=2
t = 0:0.001:6;
ct = cos(2*pi*fc*t); % carrier signal
mt = cos(2*pi*fm*t); % modulating signal
st = cos(2*pi*fc*t + (m_index*sin(2*pi*fm*t))); % FM
subplot(3,1,1)
plot(t,ct)
ylabel('amplitude'); xlabel('time');
title('Carrier signal');
subplot(3,1,2)
plot(t,mt)
ylabel('amplitude'); xlabel('time');
title('Message signal');
subplot(3,1,3)
plot(t,st)
ylabel('amplitude'); xlabel('time');
title(['FM signal for Mod. Index = ', num2str(m_index)]);