%Tutorial 8

%b = f0*sinc(f0*(-n:n)); %windowed-sinc filter with cut-off freq f0
%b stores filter coefficients, filter length is 2n+1

%Truncated sinc function with 61 points, cutoff freq 500 Hz, sampling freq
%2000 Hz

n = 30;
fs = 2000;
fn = fs/2;
f0 = 500/fn;
b = f0*sinc(f0*(-n:n));

%%
%Tasks
%1
n = 30;
fs = 4000;
fn = fs/2;
f0 = 300/fn;
b = f0*sinc(f0*(-n:n));
plot(b)
fvtool(b)
%%
%2
Fs = 4000;
Apeak=1;
dur = 1;
freq1 =150;
freq2 = 800;
ts = 1/Fs;
t = 0:ts:dur-ts;
Sig150 = Apeak * sin(2*pi*freq1*t);
Sig800 = Apeak * sin(2*pi*freq2*t);
sig = Sig150 +Sig800;
filtsig = conv(sig,b);
plot(filtsig)
%%
%3
fvtool(b1)
b1w = b1.*hamming(61)';
fvtool(b1w)
fvtool(b2)
b2w = b2.*hamming(61)';
fvtool(b2w)
%%
%4
%Low pass filter
[b,a] = LPF(400, 44000,1);
fvtool(b)
LPFsig = conv(sig,b);
plot(LPFsig);


