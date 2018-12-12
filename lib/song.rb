require 'pry'
class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@art_count = {}
  @@gen_count = {}

  def initialize(name,artist,genre)
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

    @@genres.each do |genre|
      @@genres.count(genre)
      if @@gen_count[genre]
        @@gen_count[genre] += 1
      else
        @@gen_count[genre] = 1
      end
    end
    @@gen_count
  end

  def self.artist_count
    # binding.pry
    @@artists.each do |artist|
      @@artists.count(artist)
      if @@art_count[artist]
        @@art_count[artist] += 1
      else
        @@art_count[artist] = 1
      end
    end

  # binding.pry
  @@art_count
end

end
