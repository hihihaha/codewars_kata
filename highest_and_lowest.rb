# https://www.codewars.com/kata/554b4ac871d6813a03000035
def high_and_low(numbers)
  numbers.split.map(&:to_i).minmax{ |a, b| b <=> a }.join(" ")
end
