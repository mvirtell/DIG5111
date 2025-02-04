%Tutorial 2 - 04/02/25
Filename = 'piano_middle_C.wav';
[Sig, Fs] = audioread(Filename);
dur = length(Sig)/Fs;
Ts = 1/Fs;
Time = 0:Ts:dur-Ts;
plot(Time, Sig);
xlabel('Time Sec')
ylabel('Amplitude')

%Tasks
%1
file_size = (length(Sig).*16)./8;
%File size in bytes is number of samples multipled by bit rate, divided by 8

%2
%Number of samples - 331776
%Duration - 7.5233
%Bit Depth - 16
%Sample rate - 44100

%3
%Method 1
t1 = 0.5;
t2 = 1;
partialSig = audioread(Filename,[t1*Fs,t2*Fs]);
%Method 2
partialSig2 = zeros(1,(t2*Fs)-(t1*Fs));
for i = t1*Fs:t2*Fs
    partialSig2(i-(t1*Fs)+1) = Sig(i);
end

%4
stereoData = [Sig, Sig];
audiowrite('stereoSig.wav',stereoData,Fs);

%5
%a
nativeSig = audioread(Filename,'native');
figure(2)
plot(Time,nativeSig)
xlabel('Time in sec')
ylabel('Amplitude')
%Amplitude range is expressed by values x10^4

%b
%double precision floating point numbers are used to express the range much
%more precisely in the native format. Signed integers numbers express the
%range in whole numbers in the normal format

%6
convertSig = double(nativeSig)/max(abs(double(nativeSig)));

%7
%rms takes the root mean square of the signal
rmsSig = 0.5.*rms(Sig);

%8
Numbers = 1:1:30;
q = quantizer;
Hex = num2hex(q, Numbers);
Bin = num2bin(q, Numbers);
table(Numbers, Hex, Bin)

%9
reverseSig = flip(Sig);
sound(reverseSig,Fs)

