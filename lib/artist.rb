class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def self.find_artist(name)
    self.all.find {|artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    if self.find_artist(name)
      return self.find_artist(name)
    else
      artist = self.new(name)
      artist.save
    end
  end

  def save
    @@all << self
    return self
  end

  def self.all
    @@all
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    @songs.each {|song| puts song.name}
  end

end
