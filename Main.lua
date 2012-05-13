--[[
This code implements the algorithms in chapter 2 of the 
book by MIT Press.

Sample run below:

With 100 items ============
1) 100 items, 0.00 ms
2) 100 items, 1.25 ms
3) 100 items, 4.38 ms
4) 100 items, 0.00 ms
5) 100 items, 94.50 ms
6) 100 items, 6.75 ms
slowest was 5th
fastest was 1th
With 500 items ============
1) 500 items, 44.00 ms
2) 500 items, 15.38 ms
3) 500 items, 15.75 ms
4) 500 items, 0.75 ms
5) 500 items, 105.62 ms
6) 500 items, 9.25 ms
slowest was 5th
fastest was 4th
With 1000 items ============
1) 1000 items, 183.38 ms
2) 1000 items, 23.62 ms
3) 1000 items, 35.62 ms
4) 1000 items, 9.88 ms
5) 1000 items, 89.25 ms
6) 1000 items, 25.25 ms
slowest was 1th
fastest was 4th
With 5000 items ============
1) 5000 items, 4467.88 ms
2) 5000 items, 155.38 ms
3) 5000 items, 231.88 ms
4) 5000 items, 66.12 ms
5) 5000 items, 115.62 ms
6) 5000 items, 469.00 ms
slowest was 1th
fastest was 4th
With 10000 items ============
1) 10000 items, 17916.12 ms
2) 10000 items, 339.62 ms
3) 10000 items, 502.25 ms
4) 10000 items, 141.38 ms
5) 10000 items, 131.38 ms
6) 10000 items, 1803.25 ms
slowest was 1th
fastest was 5th


--]]

function setup()
    benchmark()
    --test(bucketSort)
end

function benchmark()
    local masterArray = createArray(10000)
    local algorithms = { insertionSort, mergeSort, heapSort, quickSort, countingSort, bucketSort }
    local lengths = { 100, 500, 1000, 5000, 10000 }
    for length in iterator(lengths) do
        print("With " .. tostring(length) .. " items ============")
        local min = -1
        local max = -1
        local minTime = math.huge
        local maxTime = 0
        for index, sort in pairs(algorithms) do
            local array = sliceArray(masterArray, 1, length)
            
            local time = schedule(function ()
                sort(array)
            end)
            
            local output = string.format("%d) %d items, %.2f ms", index, length, time)
            print(output)
            
            if time > maxTime then
                maxTime = time
                max = index
            end
            if time < minTime then
                minTime = time
                min = index
            end
        end
        print("slowest was " .. tostring(max) .. "th")
        print("fastest was " .. tostring(min) .. "th")
    end
end

function test(algorithm)
    local array = createArray(10)
    print(serializeArray(array))
    algorithm(array)
    print(serializeArray(array))
end
