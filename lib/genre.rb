require 'pry'
class Genre
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all.select do |songs|
      songs.genre == self
    end
  end

  def artists
    Artist.all.select do |artists|
      #binding.pry
      artists.genre == self
    end
  end

  def self.all
    @@all
  end
end
