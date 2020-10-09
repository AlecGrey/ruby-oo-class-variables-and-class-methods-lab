require 'pry'

class Song

    attr_reader :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name, @artist, @genre = name, artist, genre

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
        @@genres.reduce({}) do |memo, genre|
            memo[genre] ? memo[genre] += 1 : memo[genre] = 1
            memo
        end
    end

    def self.artist_count
        @@artists.reduce({}) do |memo, artist|
            memo[artist] ? memo[artist] += 1 : memo[artist] = 1
            memo
        end
    end

end