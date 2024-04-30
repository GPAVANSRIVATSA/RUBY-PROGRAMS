#Factorial
pro=1
n=gets.chomp.to_i
for i in 1..n do
    pro*=i
end
puts "Factorial of #{n} is #{pro}"

n=gets.chomp.to_i
def factorial(n)
    if n==0||n==1
        return 1
    else
        return n*factorial(n-1)
    end
end
fact=factorial(n)
puts fact


#Prime Number
n=gets.chomp.to_i
c=0
for i in 2..n do
    if i==2||i==3||i==5
        puts i
    else
        for j in 2..i/2 do
            if i%j==0
                c=1
                break
        end
    end
    if c==0
        puts i
    else
        c=0
    end
    end
end

#Palindrome
n=gets.chomp.to_i
temp=0
m=n
while n>0 do
    r=n%10
    temp=temp*10+r
    n=n/10
end
if m==temp
    puts "Palindrome"
else
    puts "Not a Palindrome"
end

#Armstrong
n=gets.chomp.to_i
temp=n
sum=0
s=n.to_s
l=s.length
while n>0 do
    r=n%10
    pow=r**l
    sum+=pow
    n=n/10
end
if sum==temp
    puts "Armstrong"
else
    puts "Not an Armstrong"
end

#Array
a=Array.new(10)
for i in 1..10 do
    n=gets.chomp.to_i
    a.push(n)
end
for i in 0...a.size do
    puts a[i]
end
(a.size - 1).downto(0) do |i|
  puts a[i]
end

#Printing elements of even index
a=Array.new(6)
for i in 1..6 do
    a[i]=gets.chomp.to_i
end
for i in 0..a.length do
    if i%2==0 then 
        puts a[i]
    end
end