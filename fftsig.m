function f = fftsig(signal, Fs)
len = length(signal);
SSC = fft(signal);
SSR = abs(SSC)./len;
L=round(len/2);
Mag = mag2db(SSR);
f = (Fs/2)*(0:L)/L;
plot(f,Mag(1:L+1));
xlabel('Frequency')
ylabel('dB')
end