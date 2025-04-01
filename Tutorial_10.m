%Tutorial 10
clear; clc;
fs = 44100;
ts = 1/fs;
t = 0:ts:1-ts;
f = 1000;
A = 1;
sine = A * sin(2*pi*f*t);
sound(sine,fs/4)
%%
len = length(sine);
A = linspace(0,1,len*0.1);
D = linspace(1,0.7,len*0.2);
S = linspace(0.7,0.7,len*0.4);
R = linspace(0.7,0,len*0.3);
envelope = [A D S R];
newSig = sine.*envelope;
subplot(211),plot(sine);
axis([0 44100 -2 2]);
subplot(212), plot(newSig); hold on;
plot(envelope, 'r');
axis([0 44100 -2 2]);
