# https://www.codewars.com/kata/5270d0d18625160ada0000e4
def score(dice)
  h = dice.each_with_object(Hash.new(0)) { |e, h| h[e] += 1 }
  result = 0
  
  h.each do |k, v|
    if v >= 3
      result += case k
                  when 1 then 1000
                  else k * 100
                end
      v -= 3
    end
    while v > 0 do
      result += case k 
                  when 1 then 100
                  when 5 then 50
                  else 0
                end
      v -= 1
    end
  end

  result
end
