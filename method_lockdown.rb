# https://www.codewars.com/kata/52788a9ae42add6b13000653
class Random
  remove_method :rand, :srand

  class << self
    remove_method :rand, :srand
  end
end

module Kernel
  remove_method :rand, :srand

  class << self
    remove_method :rand, :srand
  end
end

class Array
  remove_method :sample, :shuffle
end
