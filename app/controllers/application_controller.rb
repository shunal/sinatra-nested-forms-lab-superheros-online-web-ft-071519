require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

get "/" do 
  erb :new
end

post "/teams" do 
 
  binding.pry
  erb :show
end 


end



# @team = Team.new(params[:team])
#   params[:team][:members].each do |details|
#     Hero.new(details)
#   end
#     @heroes= Hero.all