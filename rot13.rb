# https://www.codewars.com/kata/530e15517bc88ac656000716
def rot13(string)
  up_case = ("A".."Z").to_a
  down_case = ("a".."z").to_a
  
  string.chars.each_with_object([]) do |c, o| 
    if down_case.include?(c)
      o << down_case[(down_case.index(c) + 13) % 26]
    elsif up_case.include?(c)
      o << up_case[(up_case.index(c) + 13) % 26]
    else
      o << c
    end
  end.join
end
