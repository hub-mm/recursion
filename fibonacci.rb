# fibonacci.rb
# frozen_string_literal: true

def fib(n)
  arr_fib = [0, 1]

  return puts "0\n\n" if n == 0

  (2...n).each do |i|
    arr_fib << arr_fib[i - 1] + arr_fib[i - 2]
  end

  puts "#{arr_fib.join(', ')}"
  puts "This is the first #{n} numbers of the fibonacci sequence.\n\n"
end

fib(5)
fib(8)
fib(10)
fib(50)

def fib_recursive(n, arr_fib = [0, 1])
  if n <= 2
    puts "#{arr_fib.join(', ')}"
    puts "This is the first #{arr_fib.length} numbers of the fibonacci sequence.\n\n"
  else
    arr_fib << arr_fib[-1] + arr_fib[-2]
    fib_recursive(n - 1, arr_fib)
  end
end

fib_recursive(5)
fib_recursive(8)
fib_recursive(10)
fib_recursive(50)