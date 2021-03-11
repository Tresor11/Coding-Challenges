# frozen_string_literal: true

def is_valid(s)
  return true if s == ''

  open = { '(' => '(', '[' => '[', '{' => '{' }
  close = { '(' => ')', '[' => ']', '{' => '}' }
  stack = []
  n = s.size
  return false unless n.even?

  count = 0
  s.size.times do |x|
    if open[s[x]]
      stack << s[x]
    elsif s[x] == close[stack.last] && !stack.empty?
      stack.pop
      count += 2
    end
  end
  stack.empty? && count.positive?
end
