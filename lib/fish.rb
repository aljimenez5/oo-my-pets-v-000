class Fish
  attr_accessor :mood
  attr_reader :name  
  
  def initialize(name, mood = "nervous")
    @name = name
    @mood = mood
  end
  
  def mood=(new_mood)
    @mood = new_mood
  end
end