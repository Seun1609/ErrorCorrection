N = 1000000; % number of bits
p = 0.2; % probability of error
bits = round(rand(1,N)); % bit stream

% 3-Repetition code
r = 3; 
repetition_e = repetition_encoding(bits, r); % encoded
repetition_ch = noisy_channel(repetition_e, p); % passed through noisy channel
repetition_d = repetition_decoding(repetition_ch, r); % decoded
fprintf('Performance of 3-Repetition code: %f\n\n', performance_check(bits, repetition_d)); 

% 5-Repetition code
r = 5; 
repetition_e = repetition_encoding(bits, r); % encoded
repetition_ch = noisy_channel(repetition_e, p); % passed through noisy channel
repetition_d = repetition_decoding(repetition_ch, r); % decoded
fprintf('Performance of 5-Repetition code: %f\n\n', performance_check(bits, repetition_d)); 

% 7-Repetition code
r = 7; 
repetition_e = repetition_encoding(bits, r); % encoded
repetition_ch = noisy_channel(repetition_e, p); % passed through noisy channel
repetition_d = repetition_decoding(repetition_ch, r); % decoded
fprintf('Performance of 7-Repetition code: %f\n\n', performance_check(bits, repetition_d)); 

% 9-Repetition code
r = 9; 
repetition_e = repetition_encoding(bits, r); % encoded
repetition_ch = noisy_channel(repetition_e, p); % passed through noisy channel
repetition_d = repetition_decoding(repetition_ch, r); % decoded
fprintf('Performance of 9-Repetition code: %f\n\n', performance_check(bits, repetition_d)); 

% 61-Repetition code
r = 61; 
repetition_e = repetition_encoding(bits, r); % encoded
repetition_ch = noisy_channel(repetition_e, p); % passed through noisy channel
repetition_d = repetition_decoding(repetition_ch, r); % decoded
fprintf('Performance of 61-Repetition code: %f\n\n', performance_check(bits, repetition_d)); 

% Similar procedures can be done for other error correction mechanisms
% Hamming code, BCH code, Reed-Solomon code, Golay code, etc..
