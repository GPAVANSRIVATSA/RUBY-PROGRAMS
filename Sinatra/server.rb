require 'sinatra'

get '/' do
    erb:index
end
post '/' do
    content_type:json
    return request.to_json
end
get '/hello' do
    return "Hi"
end
get '/:cheese' do
    content_type:json
    return { param: params['cheese'], query: params['query'] }.to_json
end


