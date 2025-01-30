function sig = SineWave(A,freq,Fs,dur,theta)
Ts = 1/Fs;
t = 0:Ts:dur;
sig = A * sin(2*pi*freq.*t+theta);

plot(t,sig) %plot(x,y), plots wave
xlabel('Time in second')
ylabel('Amplitude')
title('Plot of Sine Wave')
grid on
end