function noteX = note(A, keynum, dur)
    Fs = 11025;
    Ts = 1/Fs;
    A4 = 440;
    ref_key = 49; %A4 is the 49th key in piano keyboard
    n = keynum-ref_key; %calculate difference between ref_key and input Key
    freq = A4*2^(n/12); %Calculate the freq of input Key
    Time = 0:Ts:dur;
    noteX = A*sin(2*pi*freq*Time);
end
