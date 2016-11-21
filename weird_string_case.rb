# https://www.codewars.com/kata/52b757663a95b11b3d00062d
def weirdcase(string)
  string.split.map{ |w| w.chars.map.with_index{ |c, i| i.even? ? c.upcase : c.downcase }.join }.join(" ")
end
