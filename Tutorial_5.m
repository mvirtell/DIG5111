%Tutorial 5
[pluck,fsp] = audioread('pluck.wav');
[church,fsc] = audioread('Church.wav');
[largeHall,fsl] = audioread('LargeHall.wav');

%Task 1

ir = zeros(1,44100);
ir([1,1000,5000,10000,15000]) = [1,0.8,0.7,0.6,0.5]; %Creates echos at respective samples, decreasing in amplitudes

pluck_echo = conv(pluck,ir);
%sound(pluck_echo,fsp)
figure()
subplot(211), plot(pluck);
subplot(212), plot(pluck_echo);
xlabel('Time (sec)')
ylabel('Amplitude')
%%
%Task 2
[largeHallmono] = largeHall(:,1);
[largeHallresamp] = resample(largeHallmono, fsp, fsl);
largeHall_reverb = conv(pluck,largeHallresamp);
%sound(largeHall_reverb,fsp)

[churchMono] = church(:,1);
[churchResamp] = resample(churchMono,fsp,fsc);
church_reverb = conv(pluck,churchMono);
%sound(church_reverb, fsp)

%%
%Task 3
wet = 0.75;
dry = 0.25;
churchDry = churchResamp.*dry;
churchWet = church_reverb.*wet;
lengthDry = length(churchDry);
lengthWet = length(churchWet);
diff = lengthWet-lengthDry;
diffMatrix = zeros(diff,1);
churchDry_resize = cat(1,churchDry,diffMatrix);
churchMix = (churchDry_resize.*dry) + (church_reverb.*wet);
sound(churchMix,fsp)


