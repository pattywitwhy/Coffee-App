require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'
require 'sinatra/namespace'

current_dir = Dir.pwd
Dir["#{current_dir}/models/*.rb"].each { |file| require file }

get '/' do
  @drinks = Drink.all
  erb :index
end

get '/drinks/new' do
  erb :new
end

post "/drinks/new" do
  drink = Drink.create(
                        name: params[:name],
                        contents: params[:contents],
                        image: params[:image]
                      )
  redirect to("/drinks/#{drink.id}")
end

get "/drinks/:id" do
  @drink = Drink.find(params[:id])
  erb :show
end

namespace "/api" do
  get "/drinks" do
    content_type 'application/json'
    @drinks = Drink.all
    @drinks.to_json
  end

  get "/drinks/:id" do
    content_type 'application/json'
    @drink = Drink.find(params[:id])
    @drink.to_json
  end
end
