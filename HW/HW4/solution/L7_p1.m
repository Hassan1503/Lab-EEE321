clc; clear all; close all;
t = linspace(0,1,100000);
mt = sin(2*pi*3*t); % message
square_pulse = 0.5*(1+square(2*pi*50*t,10)); % pulse train
PAM_sig = mt.*square_pulse; % PAM signal
subplot(3,1,1)
plot(t, mt, 'b'); grid on
ylim([-1.5 1.5])
title('Message Signal')
subplot(3,1,2)
plot(t, square_pulse, 'r'); grid on
ylim([-1.5 1.5])
title('Pulse Train')
subplot(3,1,3)
plot(t,PAM_sig, 'k'); grid on
ylim([-1.5 1.5])
title('PAM signal')