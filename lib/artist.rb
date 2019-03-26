require 'pry'

class Artist

attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    song.artist = self
  end

  def self.all
    @@all
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    all.map do |artist|
      if artist.name == name
        return artist
      end
    end
    new(name).save
  end

  def print_songs
    @songs.each do |song|
      puts song.name
    end
  end
end
