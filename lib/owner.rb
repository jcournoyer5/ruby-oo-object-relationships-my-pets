class Owner
  
  attr_reader :name, :species
  
  @@all = []
  
  
  # @@count = 0
  
  def initialize(name)
      @name = name
      @species = "human"
      @@all << self 
      
  end     
  
  # def species
  #   @species
  # end
  
  def say_species
    "I am a #{self.species}."
  end  
  
  # def save
  #   @@all << self
  # end
 
  def self.all
    @@all
  end  
  
 
  
  def self.count
    self.all.count
  end
  
  def self.reset_all
    self.all.clear
  end
  
  
end