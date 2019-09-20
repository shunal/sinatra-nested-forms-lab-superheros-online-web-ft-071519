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
 @team_members= params[:team][:members]
 
  erb :show
end 


end



# @team = Team.new(params[:team])
#   params[:team][:members].each do |details|
#     Hero.new(details)
#   end
#     @heroes= Hero.all