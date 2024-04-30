=begin
puts !true
puts !false
a=10
b=-10
puts ~a
puts ~b
=end

=begin
a=4
b=2
puts a+b
puts a-b
puts a*b
puts a/b
puts a%b
puts a**b
puts (10*10/5+3-1*4/2)
=end

=begin
a=10
b=5
min=(a>b)?a:b
puts min
=end

=begin
a=10
b=10
if (a+b>15)
puts "a+b is greater than 15"
elsif (a+b==15)
puts "a+b is equal to 15"
else
puts "a+b is less than 15"
end
=end

=begin
a=10
b=10
if a+b>=20
if a+b==20
puts "equal to 20"
else
puts "greater than 20"
end
else
if a+b<10
puts "less than 10"
else
puts "less than 20"
end
end
=end

a=2
case a
when 0
puts "a value is 0"
when 1
puts "a value is 1"
when 2
puts "a value is 2"
else
puts "a is not an integer"
end

