# https://www.codewars.com/kata/52a1feca5ec9c508d10006f8
class Calc
  ENG_TO_CALC = {
    zero: 0,
    one: 1,
    two: 2,
    three: 3,
    four: 4,
    five: 5,
    six: 6,
    seven: 7,
    eight: 8,
    nine: 9,
    plus: :+,
    minus: :-,
    times: :*,
    divided_by: :/
  }

  def initialize
    @expression = []
  end
  
  def method_missing(m, *args, &block)
    @expression << ENG_TO_CALC[m] if ENG_TO_CALC[m]
    return @expression.shift.send(*@expression) if @expression.size == 3
    self
  end
end
