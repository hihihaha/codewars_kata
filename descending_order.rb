# https://www.codewars.com/kata/5467e4d82edf8bbf40000155
def descending_order(n)
  n.to_s.chars.sort{ |a, b| b <=> a }.join.to_i
end
