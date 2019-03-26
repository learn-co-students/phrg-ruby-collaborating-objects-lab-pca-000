require 'pry'

class Song

attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = artist
  end

  def self.new_by_filename(file)
    song_name = file.split(" - ")[1]
    artist = file.split(" - ")[0]
    song = self.new(song_name)
    song.artist_name = artist
    # binding.pry
    song
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    self.artist.add_song(self)
    # binding.pry
  end
end
