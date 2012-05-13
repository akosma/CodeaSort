function quickSort(array, p, r)
    p = p or 1
    r = r or #array
    if p < r then
        q = partition(array, p, r)
        quickSort(array, p, q - 1)
        quickSort(array, q + 1, r)
    end
end

function partition(array, p, r)
    local x = array[r]
    local i = p - 1
    for j = p, r - 1 do
        if array[j] <= x then
            i = i + 1
            local temp = array[i]
            array[i] = array[j]
            array[j] = temp
        end
    end
    local temp = array[i + 1]
    array[i + 1] = array[r]
    array[r] = temp
    return i + 1
end
