require 'sinatra/base'
require 'sinatra/reloader'
require 'json'
require 'pry'


get '/' do
  erb :'index'
end

post '/' do
  redirect '/thank-you'
end

get '/thank-you' do
  erb :"thank-you"
end
