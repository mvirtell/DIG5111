function clipSig = clipper(freq, clipType, threshold)
Fs = 44100;
Ts = 1/Fs;
dur = 2;
t = 0:Ts:dur;
A = 1;
sineWave = A * sin(2*pi*freq.*t);
sineLength = length(sineWave);
clipSig = sineWave;
if (clipType == 1)
    for i=1:sineLength
        if (sineWave(i) > threshold)
            clipSig(i) = threshold;
        end
        if (sineWave(i) < -threshold)
            clipSig(i) = -threshold;
        end
    end
end
if (clipType == 2)
    for i=1:sineLength
        if sineWave(i) < -threshold
            clipSig(i) = -threshold;
        end
    end
end
if (clipType == 3)
    for i=1:sineLength
        if sineWave(i) > threshold
            clipSig(i) = threshold;
        end
    end
end
figure()
plot(clipSig), axis([1, sineLength, -1, 1]); grid on; hold off;
title('Clipped Signal')






