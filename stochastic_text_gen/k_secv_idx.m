function retval = k_secv_idx(distinct_k_sec)
    %Creating a hashtable
    retval = containers.Map;
    n = numel(distinct_k_sec);

    %Initializing a vector with the indices available
    indices = num2cell(1 : n);

    %Creating the hashtable with the key that is the sequence and it's index
    retval = containers.Map(distinct_k_sec, indices);
endfunction

