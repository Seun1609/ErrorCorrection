function encoded_bits = repetition_encoding(bits, r)
    s = size(bits);
    N = s(2);
    encoded_bits = zeros(s(1), s(2)*r);
    for i = 1:N
        k = r * (i - 1); 
        for j = 1:r
            encoded_bits(k + j) = bits(i); 
        end
    end
end