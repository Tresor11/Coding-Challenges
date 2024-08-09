# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
l = x.to_s.split('')
s = l.size
return true if s == 1

(s/2).times do |x|
return false if l[s-(x+1)] != l[x]
end
true
end
