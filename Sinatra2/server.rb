require 'sinatra'
require './models.rb'

spot=Dog.new("Spot","labordor").to_json
fluffy=Dog.new("Fluffy","pug").to_json
dogs=Array.new
dogs.push(spot)
dogs.push(fluffy)

get '/' do
    erb:index
end
=begin
get '/hello/:text' do
    "Hello  #{params['text']}"
end
=end
get '/hello/:text' do |n|
    "Hello #{n}"
end 
get '/dog' do
    dogs.to_json
end
post '/dog' do
    content_type:json
    body=JSON.parse(request.body.read)
    dogs.push(Dog.new(body["name"],body["breed"]).to_json)
    dogs.to_json
end
post '/' do
    content_type:json
    return request.to_json
end
=begin
put '/dog/:index' do
    content_type:json
    body=JSON.parse(request.body.read)
    dog1=JSON.parse(dogs[params["index"].to_i])
    dog1[body["name"]]=body["breed"]
    dogs.push(dog1.to_json)
    dogs.to_json
end
=end
put '/dog/:index' do
    content_type:json
    body=JSON.parse(request.body.read)
    dogs[params["index"].to_i]=Dog.new(body["name"],body["breed"]).to_json
    dogs.to_json
end
delete '/dog/:index' do
    content_type:json
    dogs.delete_at(params["index"].to_i)
    dogs.to_json
end
get '/hello' do
    return "Hi"
end
get '/:cheese' do
    content_type:json
    return { param => params['cheese'], query => params['query'] }.to_json
end

get '/status' do
    [418, {'Content-Type' => 'text/plain'}, "I'm a teapot"]
end 
get '/rack_response' do
    response.headers['Content-Type'] = 'text/plain'
    response.status = 200
    response.body = "Custom response"
    response.finish
end
get '/error' do
    halt 500,"Internal Server Error"
end

get '/' do
    erb :index, :layout => :post
end
  
