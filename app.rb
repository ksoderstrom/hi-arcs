require 'sinatra'
require 'json'

file = File.read './data.json'
data = JSON.parse(file)

get '/' do
  @arcs = data['arcs']
  erb :index
end

get '/arcs/:arc' do
  @episodes = data['episodes']
  @arc = data['arcs'][params[:arc]]
  erb :arc
end
