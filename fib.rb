def iterate(digit)
  array = [0, 1]
  for x in 2..digit do
    array[x] = array[x-1] + array[x-2]
  end
  array[array.length-1]
end

def recur(digit)
  if digit <= 2
    return 1
  end
  recur(digit-1) + recur(digit-2)
end