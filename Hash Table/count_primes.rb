# frozen_string_literal: true

def count_primes(n)
  return 0 if n <= 2

  arr = Array.new(n, true)
  arr[0] = false
  arr[1] = false
  p = 2
  while p * p <= n
    if arr[p]
      (p * p..n).step(p).to_a.each do |i|
        arr[i] = false
      end
    end
    p += 1
  end
  arr.count { |x| x == true }
end
