require "pry"

class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def self.count
    @@count
  end

  def self.genres
    @@genres.uniq
  end

  def self.artists
    @@artists.uniq
  end

  def self.genre_count
   @@genres.tally
  end
  def self.artist_count
    @@artists.tally
   end
 




end

ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "rap")
single_ladies = Song.new("single ladies", "beyonce", "rap")
