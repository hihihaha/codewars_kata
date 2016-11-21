# https://www.codewars.com/kata/541c8630095125aba6000c00
def digital_root(n)
 loop do
   n = n.to_s.chars.map(&:to_i).reduce(:+)
   break n if n < 10
  end
end
