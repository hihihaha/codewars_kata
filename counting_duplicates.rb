# https://www.codewars.com/kata/54bf1c2cd5b56cc47f0007a1
def duplicate_count(text)
  text.downcase.chars.each_with_object(Hash.new(0)){ |e, o| o[e] += 1 }.select{ |k, v| v > 1 }.count
end
