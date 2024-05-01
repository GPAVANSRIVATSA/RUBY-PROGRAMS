
begin
    puts "In the begin block"
rescue
    puts "In the rescue block"
end

begin
    raise "An Exception"
rescue
    puts "In the rescue block"
end
begin
    a=10/0
rescue ZeroDivisionError=>e
    puts e.message()
end

begin
    raise "An Exception"
rescue 
    puts "In the rescue block"
else
    puts "In the else block"
ensure 
    puts "In the ensure block"
end

begin
    raise "An Exception"
rescue RuntimeError=>e
    puts e.message()
else
    puts "In the else block"
ensure 
    puts "In the ensure block"
end


begin
    puts 10/0
rescue IndexError=>e
    puts e.message()
rescue ZeroDivisionError=>e
    puts e.message()
rescue StandardError=>e
    puts "In the StandardError"
else
    puts "In the else block"
ensure 
    puts "In the ensure block"
end
