class Song 
  
  @@count = 0
  @@genres = []
  @@artists = []
  
  attr_accessor :name, :artist, :genre
  
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
  
  def self.artists 
    unique_artists = []
    @@artists.each do |entry|
      if !unique_artists.include?(entry)
        unique_artists << entry 
      end 
    end 
    unique_artists
  end 
  
  def self.genres 
    unique_genres = []
    @@genres.each do |element|
      if !unique_genres.include?(element)
        unique_genres << element
      end 
    end 
    unique_genres
  end 
  
  def self.genre_count 
    genre_count_hash = {}
    @@genres.each do |element|
      if genre_count_hash.has_key?(element)
        genre_count_hash[element] += 1 
      elsif !genre_count_hash.has_key?(element)
        genre_count_hash[element] = 1 
      end 
    end 
    genre_count_hash
  end 
  
  def self.artist_count 
    artist_count_hash = {}
    @@artists.each do |entry|
      if artist_count_hash.has_key?(entry)
        artist_count_hash[entry] += 1 
      elsif !artist_count_hash.has_key?(entry)
      artist_count_hash[entry] = 1 
    end 
  end 
  artist_count_hash
  end
  
  
end 