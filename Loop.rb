
sum=0
for i in 1..10 do
sum+=i
end
puts sum


sum=0
(1..10).each do |i|
sum+=i
end
puts sum

i=0
j=0
while i<10 do
puts j
j+=2
i+=1
end

i=0
loop do
if i<=10
puts i
i+=2
else
break
end
end


i=0
loop do
    if i<=10
        if i==4
            i+=2
            next
        else
            puts i
            i+=2
        end
    else
        break
    end
end