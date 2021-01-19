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
  # dog.mood.self = "happy"
    self.dogs.each {|dog| dog.mood = "happy"}
  end  
  
  def feed_cats
    self.cats.each {|cat| cat.mood = "happy"}
  # cat.mood.self = "happy"
  end
  
  def sell_pets
   self.
  end 
  
    #   describe "#sell_pets" do
    #   it 'can sell all its pets, which makes them nervous' do
    #     fido = Dog.new("Fido", @owner)
    #     tabby = Cat.new("Tabby", @owner)

    #     [fido, tabby].each {|o| o.mood = "happy" }

    #     @owner.sell_pets

    #     [fido, tabby].each { |o| expect(o.mood).to eq("nervous") }
    #   end

    #   it 'can sell all its pets, which leaves them without an owner' do
    #     fido = Dog.new("Fido", @owner)
    #     tabby = Cat.new("Tabby", @owner)

    #     [fido, tabby].each {|o| o.mood = "happy" }

    #     @owner.sell_pets

    #     [fido, tabby].each { |o| expect(o.owner).to be(nil) }
    #     expect(@owner.cats.count).to eq(0)
    #     expect(@owner.dogs.count).to eq(0)
    #   end
    # end

  
  def list_pets
    "I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s)."
  end  
  
      # describe "#list_pets" do
      # it 'can list off its pets' do
      #   @owner.buy_cat("Crookshanks")
      #   @owner.buy_cat("Fido")
      #   @owner.buy_dog("Snuffles")
      #   @owner.buy_dog("Charley")
      #   expect(@owner.list_pets).to eq("I have #{@owner.dogs.count} dog(s), and #{@owner.cats.count} cat(s).")
      # end
  
  end
end