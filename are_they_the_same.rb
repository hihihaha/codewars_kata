# https://www.codewars.com/kata/550498447451fbbd7600041c
def comp(array1, array2)
  (array1.nil? || array2.nil?) ? false : array2.sort == array1.map{ |e| e*e }.sort
end
