function bucketSort(array)
    local b = {}
    local n = #array
    local max = maximum(array)
    local power = math.floor(math.log10(max))
    local factor = math.pow(10, power)
    for number in iterator(array) do
        local index = math.floor(number / factor)
        if b[index] == nil then
            b[index] = {}
        end
        table.insert(b[index], number)
    end
    for key, value in pairs(b) do
        insertionSort(value)
    end
    
    local i = 1
    local k = 0
    for k = 0, table.getn(b) do
        local table = b[k]
        if table ~= nil then
            for number in iterator(table) do
                array[i] = number
                i = i + 1
            end
        end
    end
end
