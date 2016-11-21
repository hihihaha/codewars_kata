# https://www.codewars.com/kata/5277c8a221e209d3f6000b56
def validBraces(braces)
  h = {
    "(" => ")",
    "{" => "}",
    "[" => "]"
  }
  
  queue = []
  
  braces.chars.each do |c|
    if h.keys.include?(c)
      queue << h[c]
    else
      return false unless c == queue.pop
    end
  end
  
  queue.empty?
end
