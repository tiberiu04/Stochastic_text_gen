function B = k_secv(A, k)
    num_sequences = numel(A) - k;
    B = cell(num_sequences, 1);
    for i = 1 : num_sequences
        seq = strjoin(A(i: i + k - 1));
        B{i} = seq;
    end
end


