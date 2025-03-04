function y = myconv(sig, IR)
sig_len = length(sig);
ir_len = length(IR);
y = zeros(1, sig_len+ir_len-1);

for i = 1:sig_len
    for ii = 1:ir_len
        y(i + ii - 1) = y(i + ii - 1) + sig(i) .* IR(ii);
    end
end

end