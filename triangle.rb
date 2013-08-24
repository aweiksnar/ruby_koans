# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  raise TriangleError if triangle_is_not_valid(a,b,c)
  if a == b && b == c
    :equilateral
  elsif a == b || b == c || a == c
    :isosceles
  else
    :scalene
  end
end

def triangle_is_not_valid(a,b,c)
  (a + b <= c) || (a + c <= b) || (b + c <= a) ? true : false
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
