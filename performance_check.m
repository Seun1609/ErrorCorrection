function performance = performance_check(in, out)
    s = size(in);
    N = s(2);
    count = 0; 
    for i = 1:N
        if (in(i) == out(i))
            count = count + 1; 
        end
    end
    performance = count / N; 
end