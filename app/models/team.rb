class Team 
  attr_accessor :name, :motto
  
  TEAMS = []
  
  def intialize(params)
    @name = params[:name]
    @motto = params[:motto]
    TEAMS << self
  end 
  
  def self.all
    TEAMS
  end 
  
end 