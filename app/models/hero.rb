class Hero
  
  attr_accessor :name, :power, :bio
  HEROES = []
  def intialize(params)
    @name = params[:name]
    @power = params[:power]
    @bio = params[:bio]
    HEROES << self
  end 
  
  def self.all
    HEROES
  end 
  
end 