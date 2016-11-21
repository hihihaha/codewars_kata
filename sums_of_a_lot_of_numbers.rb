# https://www.codewars.com/kata/54df2067ecaa226eca000229
def f(n)
  n.is_a?(Fixnum) && n > 0 ? Array.new(n){ |i| i+1 }.reduce(:+) : false
end
