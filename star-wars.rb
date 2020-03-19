class StarWarsCharacter
  attr_accessor :name, :height, :hair_color, :skin_color, :eye_color, :url 
  @@all = []

  def initialize(name, height, hair_color, skin_color, eye_color, url)
      @name= name
      @height = height
      @hair_color = hair_color
      @skin_color = skin_color
      @eye_color = eye_color
      @url = url
      @@all << self
  end

  def self.all
      @@all
  end

end