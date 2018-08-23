require 'pry'

class Owner
  attr_accessor :name, :pets
  attr_reader :species, :owner
  
  @@owners = []
  
  def initialize(owner, species = "human")
    @owner = owner
    @species = species
    @pets = {fishes: [], dogs: [], cats: []}
    @@owners << self
  end
  
  def self.all 
    @@owners
  end
  
  def self.count
    @@owners.length 
  end
  
  def self.reset_all
    @@owners.clear
  end
  
  def say_species
    return "I am a #{self.species}."
  end
  
  def buy_fish(name)
    new_fish = Fish.new(name)
    pets[:fishes] << new_fish
  end
  
  def buy_cat(name)
    new_cat = Cat.new(name)
    pets[:cats] << new_cat
  end
  
  def buy_dog(name)
    new_dog = Dog.new(name)
    pets[:dogs] << new_dog
  end
  
  def walk_dogs
    @pets[:dogs].collect {|dog| dog.mood = "happy"}
  end
  
  def play_with_cats
    @pets[:cats].collect {|cat| cat.mood = "happy"}
  end
  
  def feed_fish
    @pets[:fishes].collect {|fish| fish.mood = "happy"}
  end
  
  def sell_pets
    @pets.each {|pet_key, pet_value| pet_value.instance}
    binding.pry
      
    
  end
    
end