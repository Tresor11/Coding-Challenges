# Todo:
# Create CLI-app that will accept via standard input a sequence of numbers
# delimited by space and will return the longest growing subsequence
# that can be constructed from input by removing numbers but not changing their positions.
# Input  > 9 3 7 4 6 9 3 13 5 0
# Output < 3 4 6 9 13

inputs = STDIN.readlines.map { |a| a.chomp.split(' ').map { |x| x.to_i } }

arr = inputs[0]

result = [arr.first]
n = arr.size

arr.each_with_index do |x, y|
  if x < result.first && n - (y + 1) > result.size
    result = [x]
  elsif x < result.last && x > result[0..-2].max
    result[-1] = x
  elsif x > result.last
    result << x
  end
end

print result
