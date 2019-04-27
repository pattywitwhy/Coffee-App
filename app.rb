require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :index
end

get "/espresso" do
  erb:espresso
end

get "/cappucino" do
  erb:cappucino
end

get "/americano" do
  erb:americano
end

get "/latte" do
  erb:latte
end

get "/mocha" do
  erb:mocha
end

get "/macchiato" do
  erb:macchiato
end