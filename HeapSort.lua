
function heapSort(array)
    local arrayObj = { heapSize=#array; items=array, len=#array }
    buildMaxHeap(arrayObj)
    for i = #array, 2, -1 do
        local temp = array[1]
        array[1] = array[i]
        array[i] = temp
        arrayObj.heapSize = arrayObj.heapSize - 1
        maxHeapify(arrayObj, 1)
    end
end

function left(i)
    return 2 * i
end

function right(i)
    return 2 * i + 1
end

function maxHeapify(arrayObj, i)
    local l = left(i)
    local r = right(i)
    local largest
    
    if l <= arrayObj.heapSize and arrayObj.items[l] > arrayObj.items[i] then
        largest = l
    else
        largest = i
    end
    if r <= arrayObj.heapSize and arrayObj.items[r] > arrayObj.items[largest] then
        largest = r
    end
    if largest ~= i then
        local temp = arrayObj.items[i]
        arrayObj.items[i] = arrayObj.items[largest]
        arrayObj.items[largest] = temp
        maxHeapify(arrayObj, largest)
    end
end

function buildMaxHeap(arrayObj)
    for i = math.floor(arrayObj.len / 2), 1, -1 do
        maxHeapify(arrayObj, i)
    end
end
