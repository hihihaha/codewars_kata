# https://www.codewars.com/kata/51ba717bb08c1cd60f00002f
def solution(list)
  in_a_row = 1
  result = []

  1.upto(list.size) do |i|
    if i != list.size && list[i] - 1 == list[i - 1]
      in_a_row += 1
    else
      case in_a_row
      when 1
        result << list[i - 1]
      when 2
        result << list[i - 2] << list[i - 1]
      else
        result << "#{list[i - in_a_row]}-#{list[i - 1]}"
      end
      
      in_a_row = 1
    end
  end
  
  result.join(",")
end
