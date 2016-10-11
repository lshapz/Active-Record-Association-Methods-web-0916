class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre
  end

  def song_count
    self.songs.count#return the number of songs associated with the artist
  end

  def genre_count
    genres = []
    self.songs.each {|x|
      genres << x.genre }
      genres.uniq.count

    # x = 0
    # Artists.songs.each {|x|} #return the number of genres associated with the artist
  end
end
