function decoded_bits = repetition_decoding(output_bits, r)
    s_e = size(output_bits);
    N = s_e(2) / r;
    decoded_bits = zeros(s_e(1), N);
    for i = 1:N
        k = r * (i - 1); 
        count = 0; 
        for j = 1:r
            count = count + output_bits(k + j); 
        end
        decoded_bits(i) = round(count / r); 
    end
end