def triangle(a, b, c)
  sides = [a,b,c].sort
  raise TriangleError if sides.any? { |side| side <= 0 }
  raise TriangleError unless (sides[0] + sides[1]) > sides[2]
  sides.uniq!
  if sides.count == 1
    :equilateral
  elsif sides.count == 2
    :isosceles
  else
    :scalene
  end
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end