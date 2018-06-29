require 'pry'
class Triangle
  # write code here
  attr_accessor :length_1, :length_2, :length_3


def initialize(length_1,length_2,length_3)
  @length_1 = length_1
  @length_2 = length_2
  @length_3 = length_3
end

def kind
  if self.length_1.to_i <= 0 || self.length_2.to_i <= 0 || self.length_3.to_i <= 0 || self.length_1.to_i + self.length_2.to_i < self.length_3.to_i || self.length_1.to_i + self.length_3.to_i.to_i < self.length_2.to_i || self.length_2.to_i + self+length_3.to_i < self.length_1.to_i

    begin
      raise TriangleError
    rescue TriangleError => error
      puts error.message
    end
  elsif self.length_1 == self.length_2 && self.length_2 == self.length_3
    :equilateral
  elsif  self.length_1 != self.length_2  && self.length_2 != self.length_3
    :scalene
  elsif self.length_1 == self.length_2 && self.length_2 != self.length_3
    :isosceles
  elsif  self.length_2 == self.length_3 && self.length_2 != self.length_1
    :isosceles
  end
end
end

class TriangleError < StandardError
    def message
      puts "Invalid Triangle."
  end
end
