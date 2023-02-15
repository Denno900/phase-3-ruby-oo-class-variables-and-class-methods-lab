require 'pry'

class Song
    @@count = 0
    @@genres = []
    @@songs = []
    @@artists = []
    attr_accessor :name, :artist, :genre

    def initialize(name ,artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1
        @@genres.push(genre)
        @@artists.push(artist)
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

the_way_I_am = Song.new("the way I am", "Eminem", "rap")
love_is = Song.new("love_is_wicked", "Brick & Lace", "RnB")
not_afraid = Song.new("not_afraid", "Eminem", "rap")


binding.pry