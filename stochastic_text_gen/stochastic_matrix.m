function M = stochastic_matrix(k_secv_corpus, corpus_words, word_set, k_secv_set, k)
    num_k_seq = numel(k_secv_set);
    num_words = numel(word_set);

    %Creating a sparse matrix
    M = sparse(num_k_seq, num_words);
    for i = 1 : (numel(corpus_words) - k)
        k_seq = k_secv_corpus{i};

        % Ensuring we do not exceed the bounds of the corpus_words array
        if (i + k) <= numel(corpus_words)
            word = corpus_words{i + k};

            % Find the index of the k-sequence in the set of all unique k-sequences
            k_seq_idx = find(strcmp(k_secv_set, k_seq), 1);
            word_idx = find(strcmp(word_set, word), 1);

            % Checking if both indices are found
            if ~isempty(k_seq_idx) && ~isempty(word_idx)
                M(k_seq_idx, word_idx)++;
            end
        end
    end
end

