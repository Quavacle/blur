#Define class Ghost, assign it a color randomly
class Ghost
  #Initialize class for making new object
  def initialize
  end
  #Method containing colors, .sample returns a random "sample" value form array
  def color
  color = ["white", "yellow", "purple", "red"]
  return color.sample
  end
end
#Class must be initialized before using a method on it (duh)
ghostie = Ghost.new
ghostie = ghostie.color
puts ghostie
puts ghostie

#Function of an arithmetic sequence, assuming non-zero integers are given.
# (f(n) = f(n+1) + c)
# F = starting position or integer
# N = Index number desired (how many steps of the function)
# C = Is our constant, or the size of the step between values
def nthterm (f, n, c)
  holder =  f.step(((n+1) *c), c).to_a
  return holder[n]
end

puts nthterm(1, 2, 3)