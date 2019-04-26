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



get "/espresso" do
  "<h1>Espresso:</h1>
  <p>Just espresso</p>"
end

get "/cappucino" do
  "<h1>Cappucino:</h1>
  <p>espresso, steamed milk & foam</p>"
end

get "/americano" do
  "<h1>Americano:</h1>
  <p>espresso & hot water</p>"
end

get "/latte" do
  "<h1>Latte:</h1>
  <p>espresso & steamed milk</p>"
end

get "/mocha" do
  "<h1>Mocha:</h1>
  <p>espresso & chocolate</p>"
end

get "/macchiato" do
  "<h1>Macciato:</h1>
  <p>espresso & foam</p>"
end