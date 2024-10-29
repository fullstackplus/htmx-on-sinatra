require 'sinatra/base'
require 'sinatra/reloader'
require 'json'
require 'pry'


class Message
  attr_reader :id

  def initialize(id)
    @id = id
  end
end

get '/' do
  erb :'index'
end

get '/messages' do
  erb :'messages'
end

get '/messages/:id' do
  @message = Message.new(params[:id])
  erb :'message'
end

# PATCH /messages/42
patch '/messages/:id' do
  # logic for updating the reply
  @message = Message.new(params[:id])
  erb :'message'
end

get '/messages/:id/replies' do
  @message = Message.new(params[:id])
  erb :'reply'
end

# POST messages/42/replies
post '/messages/:id/replies' do
  # logic for creating the reply
end

