class Artist
  attr_accessor :name, :songs, :artist
  @@song_count = 0
  @@all = []

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def add_song_by_name(name)
    song = Song.new(name)
    @songs << song
    song.artist = self
    @@song_count += 1
  end

  def self.song_count
    @@song_count
  end

  def save
    @@all << self
    self
  end
      # binding.pry
  def self.find_or_create_by_name(name)
    @@all.each do |artist|
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
