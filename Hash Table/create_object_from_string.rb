# Create an application that will convert text-based configuration format into json.
# The application should accept input as file or a stdin-stream and print result into stdout.

# Sample input:
# ```
# config = 3
# config_b.items = item1
# config_b.items = item2
# config_b.items.named_item = 123
# config_c.root.a.b.c = 13
# ```

# Expected output for sample input:
# ```
# {
#    "config":3,
#    "config_b":{
#       "items":{
#          "0":"item1",
#          "1":"item2",
#          "named_item":123
#       }
#    },
#  "config_c":{
#     "root":{
#        "a":{
#           "b":  {
#             "c":13
#            }
#        }
#     }
#  }
# }
#

inputs = STDIN.readlines.map { |a| a.chomp }

def add_item(keys, value, hash)
  current = keys.shift
  if keys.empty?
    hash[current] = value
  elsif !hash[current].nil?
    hash[current] = { "0": hash[current] } if hash[current].instance_of?(String)
    add_item(keys, value, hash[current])
  else
    hash[current] = {}
    add_item(keys, value, hash[current])
  end
end

def create_config(inputs)
  hash = {}
  inputs.each do |x|
    value = x.split('=')[1]
    keys = x.split('=')[0].strip.split('.')
    add_item(keys, value, hash)
  end
  hash
end

create_config(inputs)
