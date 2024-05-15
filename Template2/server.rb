require 'sinatra'

#Filters
after do
  puts "This call is through after filter"
  puts response.status
  def bar(name)
      "#{name}"
    end
  puts ""
end


before do
  @note = "Hey"
  puts "This call is through before filter"
  puts @note
  def bar(name)
      "#{name}"
    end
  puts ""
end



get '/' do
  @note #=> 'Hi!'
  bar("Hello!") #=> 'bar/baz'
end


#Helpers
helpers do
  def bar(name)
    "#{name}"
  end
end
#Specifying the root route that takes a name as the parameter.
get '/:name' do
  bar(params['name'])
end