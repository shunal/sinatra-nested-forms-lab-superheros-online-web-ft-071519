require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get "/" do 
  erb :new
end

post "/teams" do 
  # @team = Team.new(params[:team])
  # params[:team][:heroes].each do |details|
  #   Hero.new(details)
  # end
  #   @heroes= Hero.all
  @team = Team.new(name: params[:team][:name], motto: params[:team][:motto])
      members = params[:team][:members]

      members.each do |member_params|
        Hero.new({name: member_params[:name], power: member_params[:power], bio: member_params[:bio]})
      end
      @heroes = SuperHero.all
  erb :show
end 


end
