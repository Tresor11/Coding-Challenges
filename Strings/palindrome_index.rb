def palindromeIndex(s)
  return -1 if s == s.reverse

  str = ''
  (s.length / 2).times do |i|
    next unless s[i] != s[-(i + 1)]

    s1 = s[0...i]
    s2 = s[i + 1...s.length]
    str = s1 + s2
    return i if str.reverse == str

    s1 = s[0...-(i + 1)]
    s2 = s[(s.length - i)...s.length]
    str = s1 + s2
    return s.length - i - 1 if str.reverse == str
  end
end
