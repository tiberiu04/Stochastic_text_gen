function retval = sample_n_words(text, word_set, kscv_set, k, stoch, words_idx, n)
    retval = text;
    for i = 1:n
        probs = sample_next_word(retval, words_idx, kscv_set, k, stoch);
        if isempty(probs)
            break;
        end
        word_indices = find(probs > 0);
        sampled_index = randsample(word_indices, 1, true, probs(word_indices));
        word_list = words_idx.keys;
        next_word = word_list{sampled_index};
        retval = [retval, ' ', next_word];
    end
end


