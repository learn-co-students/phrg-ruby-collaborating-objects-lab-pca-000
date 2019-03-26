describe 'Song' do
  describe '#initialize with #name' do
    it 'accepts a name for the song' do
      song = Song.new('Over the Rainbow')
      expect(song.name).to eq('Over the Rainbow')
    end
  end

  describe '#name=' do
    it 'sets the song name' do
      song = Song.new('Over the Rainbow')
      song.name = 'Thriller'
      expect(song.name).to eq('Thriller')
    end
  end

  describe '#artist=' do
    it 'sets the artist object to belong to the song' do
      song = Song.new('Man in the Mirror')
      new_artist_object = Artist.new('King of Pop')
      song.artist = new_artist_object
      expect(song.artist).to eq(new_artist_object)
    end
  end

  describe '.new_by_filename' do
    it 'creates a new instance of a song from the file that\'s passed in' do
      new_instance = Song.new_by_filename('Michael Jackson - Black or White - pop.mp3')
      expect(new_instance.name).to eq('Black or White')
      expect(new_instance.artist.name).to eq('Michael Jackson')
    end
  end
end
