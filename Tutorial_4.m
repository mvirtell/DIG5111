%Tutorial 4

%Task 1

Fs = 44100;
freq = 1;
dur = 1;
Ts = 1/Fs;
t = 0:Ts:dur;
A = 1;
sineWave = A * sin(2*pi*freq.*t);
sineLength = length(sineWave);
clip = sineWave;
for i=1:sineLength
    if (sineWave(i) > 0.5)
        clip(i) = 0.5;
    end
    if (sineWave(i) < -0.5)
        clip(i) = -0.5;
    end
end
plot(clip), axis([1, sineLength, -1, 1]); grid on;
title('Sine Wave clipping')

%%

%Task 2

clip2 = sineWave;

for i = 1:sineLength
    if (sineWave(i) < -0.1)
        clip2(i) = -0.1;
    end
end
plot(clip2), axis([1, sineLength, -1, 1]); grid on; hold off

%%
%Task 3
%clipper function accepts 3 inputs
%clipSig = clipper(freq, clipType, threshold)
%freq = frequency of signal
%clipType: 1 = symmetrical clipping, 2 = asymmetrical negative clipping
%3 = asymmetrical positive clipping
%threshold = threshold of clipping
freq = 220;
threshold = 0.5;
clipType = 1;
clip1 = clipper(freq, clipType, threshold);
clipType = 2;
clip2 = clipper(freq, clipType, threshold);
clipType = 3;
clip3 = clipper(freq, clipType, threshold);

%%

%Task 4
x = -1:0.01:1;
Fs = 44100;
Ts = 1/Fs;
dur = 1;
NumberOfSteps = 10;
t = 0:Ts:dur;
subplot(211), plot(x); grid on; hold on;
y = t*NumberOfSteps;
y = round(y);
y = y*(1/NumberOfSteps);
plot(y, '--');
z = sin(2*pi*1.*t);
subplot(212), plot(z); grid on; hold on;
NumberOfSteps2 = 3;
y2 = z*NumberOfSteps2;
y2 = round(y2);
y2 = y2*(1/NumberOfSteps2);
figure()
plot(y2, '--');

A = 1;
keynum = 49;
dur = 1;
noteX = note(A,keynum,dur);
noteX2 = noteX*NumberOfSteps2;
noteX2 = round(noteX2);
noteX2 = noteX2*(1/NumberOfSteps2);
figure()
plot(noteX2);


