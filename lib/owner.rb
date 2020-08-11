class Owner
  attr_reader :name, :species
  @@all = []

  def initialize name
    @name = name
    @species = 'human'
    save
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def say_species 
    p "I am a #{self.species}."
  end

  def self.count
    @@all.count
  end

  def self.reset_all
    @@all.clear
  end
  
  def cats 
    Cat.all.select do |cat|
      cat.owner == self
    end
  end

  def dogs
    Dog.all.select do |dog|
      dog.owner == self 
    end
  end

  def buy_cat name
    cat = Cat.new name, self
  end

  def buy_dog name
    dog = Dog.new name, self
  end

  def walk_dogs
    Dog.all.select do |dog|
      dog.owner == self
      dog.mood = "happy"
    end
  end

  def feed_cats
    Cat.all.select do |cat|
      cat.owner == self
      cat.mood = "happy"
    end
  end

  def sell_pets
    Cat.all.select do |cat|
      cat.owner == self
      cat.mood = "nervous"
      cat.owner = nil

    end

    Dog.all.select do |dog|
      dog.owner == self
      dog.mood = "nervous"
      dog.owner = nil

    end
  end

  def list_pets
    cats = Cat.all.select do |cat|
       cat.owner == self

    end

    dogs = Dog.all.select do |dog|
       dog.owner == self
    end
    p "I have #{dogs.count} dog(s), and #{cats.count} cat(s)."
  end
end