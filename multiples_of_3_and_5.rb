# https://www.codewars.com/kata/514b92a657cdc65150000006
def solution(number)
  (1...number).select{ |e| e % 3 == 0 || e % 5 == 0 }.reduce(0){ |a, e| a + e }
end
