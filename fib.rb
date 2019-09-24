def iterative_fib(digit)
  array = [0, 1]
  for x in 2..digit do
    array[x] = array[x-1] + array[x-2]
  end
  array[array.length-1]
end

def recursive_fib(digit)
  if digit <= 2
    return 1
  end
  recursive_fib(digit-1) + recursive_fib(digit-2)
end

require 'benchmark'
num = 35
Benchmark.bm do |x|
  x.report("recursive_fib") { recursive_fib(num) }
  x.report("iterative_fib")  { iterative_fib(num)  }
end
