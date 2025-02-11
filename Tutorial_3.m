%Tutorial 3
NoteC = note(0.7,40,2);
NoteE = note(0.5,44,2);
NoteG=note(0.5,47,2);

Ctriad_org = NoteC+NoteE+NoteG;
Ctriad = Ctriad_org./max(abs(Ctriad_org));
%sound(Ctriad,11025);
audiowrite('Ctriad.wav',Ctriad,11025);

%Task 1
noteC = note(0.5,40,0.25);
noteD = note(0.5,42,0.25);
noteE = note(0.5,44,0.25);
noteE_long = note(0.5,44,0.5);
noteD_long = note(0.5,42,0.5);
noteC_long = note(0.5,40,0.5);
noteG = note(0.5,47,0.25);
noteG_long = note(0.5,47,0.5);

%Mary had a Little Lamb
%Quarter notes were made with signals of 0.25 seconds length
%Half notes were made with signals of 0.5 seconds length

sound(noteE,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(noteC,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(noteE,11025);
pause(0.25);
sound(noteE,11025);
pause(0.25);
sound(noteE_long,11025);
pause(0.5);
sound(noteD,11025);
pause(0.25)
sound(noteD,11025);
pause(0.25)
sound(noteD_long,11025);
pause(0.5)
sound(noteE,11025);
pause(0.25);
sound(noteG,11025);
pause(0.25);
sound(noteG_long,11025);
pause(0.5);
sound(noteE,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(noteC,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(noteE,11025);
pause(0.25);
sound(noteE,11025);
pause(0.25);
sound(noteE,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(noteE,11025);
pause(0.25);
sound(noteD,11025);
pause(0.25);
sound(Ctriad,11025);
%% 

%Task 2
Fs = 22050;
Ts = 1/Fs;
t = 0:Ts:1;
sig = rand(size(t));
sound(sig, Fs);
audiowrite('noise.wav',sig,Fs)



