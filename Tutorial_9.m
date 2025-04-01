%Tutorial 9
Fs=10000;
A=0.8;
Ts=1/Fs;
dur=1.5;
t=0:Ts:dur;
Theta=2*pi*(100+200*t+500*t.*t);
chirpsig=A*sin(Theta);
audiowrite('mychirp1.wav',chirpsig,Fs);
%sound(chirpsig,Fs)

%% 1700-200
Fs=10000;
A=0.8;
Ts=1/Fs;
dur=1.5;
t=0:Ts:dur;
Theta=2*pi*(100+1700*t-500*t.*t);
chirpsig=A*sin(Theta);
sound(chirpsig,Fs);
%% FFT of the second chirp signal
len = length(chirpsig);
SSC = fft(chirpsig);
SSR = abs(SSC)./len;
L=round(len/2);
Mag = mag2db(SSR);
f = (Fs/2)*(0:L)/L;
plot(f,Mag(1:L+1));
xlabel('Frequency')
ylabel('dB')
%%
spectrogram(chirpsig,128,120,128,10000);
%%
%Task 1
signal = mychirp(500,1000,2);
sound(signal,8000)
audiowrite('signal.wav',signal,8000)
%%
%Task 2
f = fftsig(signal, 8000);

%%
%Task 3
spectrogram(signal,hann(512),256,512,8000,'yaxis')