# A method named `binary_to_decimal` that receives as input an array of size 8.
# The array is randomly filled with 0’s and 1’s.
# The most significant bit is at index 0.
# The least significant bit is at index 7.
# Calculate  and return the decimal value for this binary number using
# the algorithm you devised in class.

binary_array = []
8.times do
  binary_array.push(rand(2))
end

def binary_to_decimal(binary_array)
  decimal = 0
  i = 7
  binary_array.each do |bit|
    decimal += bit * 2**i
    i -= 1
  end
  return decimal
end

puts binary_to_decimal(binary_array)


# Optional Decimal to Binary 
decimal = rand(1000)
def decimal_to_binary(decimal)
  binary_array = []
  until decimal == 0
    binary_array.push(decimal % 2)
    decimal = decimal / 2
  end
  return binary_array.reverse
end

print decimal_to_binary(decimal)
