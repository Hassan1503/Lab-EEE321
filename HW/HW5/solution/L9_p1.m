snr=0:1:10; % es/ep
for k=1:1:length(snr)
    ber_bpsk(k)= qfunc(sqrt(2*snr(k)))
    ber_dpsk(k)= .5*exp(-snr(k))
    ber_fpsk(k)= .5*exp(-.5*snr(k))
end
semilogy(snr,ber_bpsk,'-o');
hold on;
semilogy(snr,ber_dpsk,'-s');
hold on;
semilogy(snr,ber_fpsk,'-*');
xlabel('Signal to Noise Ratio')
ylabel('Bit Error Rate')
legend('BPSK','DPSK','FSK-NC')
grid on