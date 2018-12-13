class Song
  attr_reader :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []
  @@genres_hash = {}
  @@artists_hash = {}

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << artist
    @@genres << genre
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    @@genres.each do |genre|
      if @@genres_hash.keys.include?(genre)
        @@genres_hash[genre] += 1
      else
        @@genres_hash[genre] = 1
      end
    end
    @@genres_hash
  end

  def self.artist_count
    @@artists.each do |artist|
      if @@artists_hash.keys.include?(artist)
        @@artists_hash[artist] += 1
      else
        @@artists_hash[artist] = 1
      end
    end
    @@artists_hash
  end
end
