function [b,a] = LPF(f0,Fs,Q)
w0 = 2*pi*f0/Fs;
alpha = sin(w0)/(2*Q);
b0 = (1-cos(w0))/2;
b1 = 1-cos(w0);
b2 = (1-cos(w0))/2;
a0 = 1+alpha;
a1 = -2*cos(w0);
a2 = 1-alpha;
a = [a0,a1,a2];
b = [b0,b1,b2];
a = a./a0;
b = b./b0;
end