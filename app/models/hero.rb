class Hero
  
  attr_accessor :name, :power, :bio
  HEROES = []
  def intialize(args)
    @name = args[:name]
    @power = args[:power]
    @bio = args[:bio]
    HEROES << self
  end 
  
  def self.all
    HEROES
  end 
  
end 