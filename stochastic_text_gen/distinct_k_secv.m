function unique_cell_array = distinct_k_secv(cell_array)
    %Obtaining the unique elements
    unique_elements = unique(cell_array);

    %Sorting the elements
    sorted_unique_elements = sort(unique_elements);

    %Obtaining the cell array with the unique sequences
    unique_cell_array = sorted_unique_elements(:);
end

