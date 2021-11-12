class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@genres = []
    @@artists = []

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
        sum_g = Hash.new(0)
        @@genres.each do |el|
            sum_g[el] += 1
        end
        sum_g
    end

    def self.artist_count
        sum_a = Hash.new(0)
        @@artists.each do |el|
            sum_a[el] += 1
        end
        sum_a
    end

end