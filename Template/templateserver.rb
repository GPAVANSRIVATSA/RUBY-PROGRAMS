require 'sinatra'

#Templates
get '/' do
    erb :index,layout: :layout
end

#Regular Expressions
get %r{/user/(\w+)} do |name|
    "Hello, #{name}"
end

get %r{/number/(\d+)} do |n|
    "Number, #{n}"
end

#Filters
before do
    puts "Hello"
end

after do
    logger.info(request.request_method)
    logger.info(request.path)
end