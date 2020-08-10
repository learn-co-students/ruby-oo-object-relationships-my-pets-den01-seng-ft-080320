require 'pry'

class Dog
  # code goes here
    attr_accessor :owner, :mood
    attr_reader :name 

    @@all = []

  def initialize name, owner
    @name = name 
    @owner = owner
    @mood = "nervous"
    @@all << self 
  end

  def self.all
    @@all
  end

  def self.count
    all.length
  end
  
  def self.reset_all 
    @@all = []
  end

end