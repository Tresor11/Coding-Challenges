# frozen_string_literal: true

def combination_sum(candidates, target)
  result = []
  helper(result, [], candidates, target, index = 0)
  result
end

def helper(result, curr, candidates, target, index = 0)
  if target.zero?
    result.push(curr.clone)
  else
    index.upto(candidates.size - 1) do |i|
      candidate = candidates[i]
      next if (target - candidate).negative?

      target -= candidate
      curr.push(candidate)
      helper(result, curr, candidates, target, i)
      target += candidate
      curr.pop
    end
  end
end
