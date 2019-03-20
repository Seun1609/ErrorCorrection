function output_bits = noisy_channel(input_bits, p)
    s = size(input_bits);
    output_bits = zeros(s);
    for i = 1:s(2)
        if (rand < p)
            output_bits(i) = 1 - input_bits(i); 
        else
            output_bits(i) = input_bits(i); 
        end
    end
end