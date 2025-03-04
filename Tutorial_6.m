%Tutorial 6
NoiseFs = 22050;
NoiseDur = 2;
Noise = randn(NoiseFs*NoiseDur,1);
sound(Noise,NoiseFs)
%%
a = 1;
b = Hd.numerator;
stem(b);
newnoise1 = conv(Noise,b);
newnoise2 = filter(Hd,Noise);
length1 = size(newnoise1);
length2 = size(newnoise2);
%%
%Task 1
ir_Hd = Hd.numerator;
y1 = myconv(Noise,ir_Hd);
ir_Lowpass = Lowpass.numerator;
y2 = myconv(Noise, ir_Lowpass);

%Task 2
%To create pink noise in Matlab, you would need to create noise with the
%randn function, then apply a filter with a frequency response proportional
%to 1/f

