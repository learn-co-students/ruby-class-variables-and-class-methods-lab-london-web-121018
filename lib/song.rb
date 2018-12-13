

class Song

    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = 

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
            i = 1
            if @@genre_count.has_key?(genre)
                i += 1
                @@genre_count[genre] = i
            else 
                @@genre_count[genre] = i
            end
              
        end
        @@genre_count
    end

    def self.artist_count
        @@artists.each do |artist|
            i = 1
            if @@artist_count.has_key?(artist)
                i += 1
                @@artist_count[artist] = i
            else 
                @@artist_count[artist] = i
            end
              
        end
        @@artist_count
    end

end

