function retval = word_idx(distinct_wds)
    retval = containers.Map;
    n = numel(distinct_wds);
    indices = num2cell(1 : n);
    retval = containers.Map(distinct_wds, indices);
endfunction

