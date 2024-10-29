require 'sinatra/base'
require 'sinatra/reloader'
require 'json'
require 'pry'


get '/' do
  erb :'index'
end

post '/' do
  redirect "/thank-you/#{params[:name]}"
end

get '/thank-you/:name' do
  erb :"thank-you", :locals => { :name => params[:name] }
end
