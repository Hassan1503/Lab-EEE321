b = [0 1 1 0 1 1 1 0 1 1 0 1]; % digital bits
n = length(b);
mt = [];
for i = 0: 1: n-1;
mt( (i*100)+1: 1: ((i+1)*100)+1 ) = b(i+1);
end
t = 0: 0.01: n;
fc = 3;
f_dev = 4;
ct = sin(2*pi*fc*t); % carrier signal
fsk = sin(2*pi*(fc + f_dev*mt).*t); % FSK signal
subplot(3,1,1);
plot(t,ct, 'b', 'linewidth',2); grid on;
legend('Carrier Wave');
ylim([-1.2 1.2]);
subplot(3,1,2);
plot(t,mt, 'r', 'linewidth',2); grid on;
legend('Input Bit Stream');
ylim([-1.2 1.2]);
subplot(3,1,3);
plot(t,fsk, 'b', 'linewidth',2); grid on;
legend('BFSK Wave');
ylim([-1.2 1.2]);