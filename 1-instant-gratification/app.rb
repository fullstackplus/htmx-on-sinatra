require 'sinatra/base'
require 'sinatra/reloader'

get '/' do
  erb :'index'
end

get '/hello' do
  "<p id=greetme class=fade-in>Hello World!</p>"
end
