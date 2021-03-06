class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  def song_count
    self.songs.count
    # return the number of songs in a genre
  end

  def artist_count
    self.artists.count
    #Genre.songs.artists.count# return the number of artists associated with the genre
  end

  def all_artist_names
    artists = []
    self.artists.each {|x|
        artists << x.name}
    artists.uniq
    # return an array of strings containing every musician's name
  end
end
