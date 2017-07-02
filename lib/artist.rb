# require 'pry'
# require_relative './song.rb'

class Artist

  attr_accessor :songs, :name

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def save
    @@all << self
  end

  def print_songs
    self.songs.map do |song|
      puts song.name
    end
  end

  def self.all
    @@all
  end

 def add_song(song)
   self.songs << song
 end

 def self.find_by_name(name)
   self.all.find {|art| art.name == name}
 end

 def self.find_or_create_by_name(artist)

   self.find_by_name(artist) ? self.find_by_name(artist) : Artist.new(artist)

 end


end

# Pry.start
