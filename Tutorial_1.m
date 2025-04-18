%Tutorial 1 - 30/1/25

%Question 1
A = (3+4)/(5+6);
disp(A)
A = 2*(pi*pi);
disp(A)
A = sqrt(2);
disp(A)
A = (0.0000123 + 5.67e-3)*0.4567e-4;
disp(A)

%Question 2
C = 37;
F = (C*(9/5))+32;
disp(F)

%Question 3
Fs = 2000;
dur = 2;
freq = 100;
theta = pi;
A = 0.5;
sig = SineWave(A,freq,Fs,dur,theta);


%Question 4
Fs = 10000;
dur = 0.05;
A = 0.5;
freq = 20;
sig1 = SineWave(A,freq,Fs,dur,theta);
subplot(3,1,1);
plot(sig1);
xlabel('Samples');
ylabel('Amplitude');
title('Signal 1')

freq = 200;
sig2 = SineWave(A,freq,Fs,dur,theta);
subplot(3,1,2);
plot(sig2);
xlabel('Samples');
ylabel('Amplitude');
title('Signal 2')

freq = 1000;
sig3 = SineWave(A,freq,Fs,dur,theta);
subplot(3,1,3);
plot(sig3);
xlabel('Samples');
ylabel('Amplitude');
title('Signal 3')
