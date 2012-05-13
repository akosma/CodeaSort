
function countingSort(array)
    local b = {}
    local c = {}
    local k = maximum(array)
    for i = 0, k do
        c[i] = 0
    end
    for j = 1, #array do
        c[array[j]] = c[array[j]] + 1
    end
    for i = 1, k do
        c[i] = c[i] + c[i - 1]
    end
    for j = #array, 1, -1 do
        b[c[array[j]]] = array[j]
        c[array[j]] = c[array[j]] - 1
    end
    
    for i = 1, #array do
        array[i] = b[i]
    end
end
