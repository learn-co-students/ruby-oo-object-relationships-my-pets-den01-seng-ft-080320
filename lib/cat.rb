require 'pry'

class Cat
  attr_accessor :mood, :owner
  attr_reader :name
  @@all = []

  def initialize name, owner
    @name = name
    @owner = owner
    @mood = "nervous"
    save
  end

  def save
    @@all << self
  end
  
  def self.all
    @@all
  end
end


