function insertionSort(array)
    local len = #array
    local j
    for j = 2, len do
        local key = array[j]
        local i = j - 1
        while i > 0 and array[i] > key do
            array[i + 1] = array[i]
            i = i - 1
        end
        array[i + 1] = key
    end
    return array
end
