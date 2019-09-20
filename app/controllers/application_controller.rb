require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get "/" do 
  erb :new
end

post "/teams" do 
 @team_name= params[:team][:name]
 @team_motto= params[:team][:motto]
 @hero_names= []
 @hero_power= []
 @hero_bio= []
 @team_members= params[:team][:members]
 @team_members.each do |member|
   @hero_names << member[:name]
   @hero_power << member[:power]
   @hero_bio << member[:bio]
 end
   
 end 
   
   
  binding.pry
  erb :show
end 


end



# @team = Team.new(params[:team])
#   params[:team][:members].each do |details|
#     Hero.new(details)
#   end
#     @heroes= Hero.all