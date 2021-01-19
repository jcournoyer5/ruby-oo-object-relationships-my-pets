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
  
  def cats
    Cat.all.select{|cat| cat.owner == self}
  end
  
  def dogs
    Dog.all.select{|dog| dog.owner == self}
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def buy_dog(name)
    Dog.new(name, self)
  end
  
  def walk_dogs
    
    dog.mood.self = "happy"
  end  
  
  def feed_cats
  cat.mood.self = "happy"
  end
  
  def sell_pets
  
  end 
  
  def list_pets
  
  end  
  
end