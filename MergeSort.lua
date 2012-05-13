
function mergeSort(array, p, r)
    p = p or 1
    r = r or #array
    if p < r then
        local q = math.floor((p + r) / 2)
        mergeSort(array, p, q)
        mergeSort(array, q + 1, r)
        merge(array, p, q, r)
    end
    return array
end

function merge(array, p, q, r)
    local n1 = q - p + 1
    local n2 = r - q
    local i
    local j
    
    local left = {}
    for i = 1, n1 do
        left[i] = array[p + i - 1]
    end
    left[n1 + 1] = math.huge
    
    local right = {}
    for j = 1, n2 do
        right[j] = array[q + j]
    end
    right[n2 + 1] = math.huge
    
    i = 1
    j = 1
    for k = p, r do
        if left[i] <= right[j] then
            array[k] = left[i]
            i = i + 1
        else
            array[k] = right[j]
            j = j + 1
        end
    end
end
