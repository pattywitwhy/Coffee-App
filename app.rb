require 'sinatra'
require 'sinatra/reloader'

get "/cappucino" do
  "<h1>Cappucino:</h1>
  <p>1/3 espresso, 1/3 steamed milk, 1/3 foam</p>
  <p>Tastes great with a biscotti!</p>"

end