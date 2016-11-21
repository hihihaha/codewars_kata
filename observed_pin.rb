# https://www.codewars.com/kata/5263c6999e0f40dee200059d
def get_pins(observed)
  h = {
    "1"=>[1,2,4],
    "2"=>[1,2,3,5],
    "3"=>[2,3,6],
    "4"=>[4,1,5,7],
    "5"=>[5,2,6,8,4],
    "6"=>[6,3,5,9],
    "7"=>[7,4,8],
    "8"=>[8,5,9,0,7],
    "9"=>[9,6,8],
    "0"=>[0,8] 
  }
  
  observed = observed.chars
  possible_digits = observed.each_with_object([]){ |e, o| o << h[e] }
  possible_digits.shift.product(*possible_digits).map(&:join)
end
