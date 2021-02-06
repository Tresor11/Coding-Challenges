# frozen_string_literal: true

def add_two_numbers(l1, l2)
  num1 = get_values(l1).reverse.join('').to_i
  num2 = get_values(l2).reverse.join('').to_i
  arr = (num1 + num2).to_s.split('').reverse.map(&:to_i)
  create_list(arr)
end

def get_values(l)
  arr = []
  current = l
  while current
    arr << current.val
    current = current.next
  end
  arr
end

def create_list(arr)
  list = ListNode.new(arr[0])
  current = list
  arr.each_with_index do |el, ind|
    next if ind.zero?

    node = ListNode.new(el)
    current.next = node
    current = node
  end
  list
end
