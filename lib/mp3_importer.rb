class MP3Importer

  attr_accessor :path, :files

  def initialize(path)
    @path = path
    @files = files
  end

  def files
    Dir.entries(path).grep(/.*\.mp3/)
    # binding.pry
  end

  def import
    @files.each {|file| Song.new_by_filename(file)}
    # binding.pry
  end

end
