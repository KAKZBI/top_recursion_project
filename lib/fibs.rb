def fibs(n)
    fibs_array = [0, 1]
    i = 2
    while fibs_array.length < n
        fibs_array << fibs_array[i-1] + fibs_array[i-2]
        i += 1
    end
    return fibs_array
end
p fibs(8)

def fibs_rec(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2
    fibs_array = fibs_rec(n-1)
    return fibs_array << fibs_array[-2] + fibs_array[-1]
end
p fibs_rec(8)