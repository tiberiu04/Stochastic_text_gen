function probs = sample_next_word(text, words_idx, k_secv_idx, k, stoch)
    last_k_seq = text(end - k + 1 : end);
    if isKey(k_secv_idx, last_k_seq)
        k_seq_idx = k_secv_idx(last_k_seq);
        probs = stoch(:, k_seq_idx)';
    else
        probs = ones(1, numel(words_idx)) / numel(words_idx);
    end
end

