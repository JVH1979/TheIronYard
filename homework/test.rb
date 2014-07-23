puts "john hammond"
nick= "nick"
math= 10
math2= 12.45
puts math
puts math2
puts math + math2
puts nick
rubyishard= true
puts "casey #{rubyishard} #{math2} #{2 + 2}"
nick= gets
puts nick.reverse
#bmi=(weight in pounds / ( height in inches * height in inches )) * 703
height= gets.chomp.to_f
weight= gets.chomp.to_f
puts weight / (height * height ) * 703
# volume of sphere: (4/3) * pi or 3.14 * r^3)
radius of sphere= gets.chomp.to_f
pi= 3.14.to_f
puts (4 / 3) * pi * radius of sphere ^ 3
