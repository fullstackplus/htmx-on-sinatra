require 'sinatra/base'
require 'sinatra/reloader'
require 'json'
require 'pry'


get '/' do
  erb :'index'
end

post '/' do
  erb :"thank-you", :locals => { :name => params[:name] }
end
