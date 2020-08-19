# this is a test file
def print_a(s)
    count=0
    s.split("").forEach do |el|
        count++ if el == 'a'
    end
    return count
end