# https://www.codewars.com/kata/55908aad6620c066bc00002a
def XO(str)
  s = str.downcase.gsub(/[^xo]/, '')
  h = s.chars.each_with_object(Hash.new(0)){ |c, o| o[c] += 1 }
  h["x"] == h["o"]
end
