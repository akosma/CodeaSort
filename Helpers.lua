function iterator(t)
    local i = 0
    local n = #t
    return function ()
        i = i + 1
        if i <= n then return t[i] end
    end
end

function createArray(length)
    local array = {}
    local i
    for i = 1, length do
        array[i] = math.floor(math.random() * 100000)
    end
    return array
end

function maximum (a)
    local mi = 1          -- maximum index
    local m = a[mi]       -- maximum value
    for i,val in ipairs(a) do
        if val > m then
            mi = i
            m = val
        end
    end
    return m, mi
end

function schedule(func)
    function milliseconds()
        return os.clock() * 1000
    end
    
    local x = milliseconds()
    func()
    return milliseconds() - x
end

function serializeArray(array)
    local output = table.concat(array, ", ")
    return "[" .. output .. "]"
end

function sliceArray (values, i1, i2)
    local res = {}
    local n = #values
    -- default values for range
    i1 = i1 or 1
    i2 = i2 or n
    if i2 < 0 then
        i2 = n + i2 + 1
    elseif i2 > n then
        i2 = n
    end
    if i1 < 1 or i1 > n then
        return {}
    end
    local k = 1
    for i = i1,i2 do
        res[k] = values[i]
        k = k + 1
    end
    return res
end
