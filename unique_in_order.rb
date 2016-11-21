# https://www.codewars.com/kata/54e6533c92449cc251001667
def unique_in_order(iterable)
  a = iterable.is_a?(String) ? iterable.chars : iterable
  a.each_with_object([]){ |e, o| o << e unless o.last == e }
end
