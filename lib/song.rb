require 'pry'




class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []
    @@all_genres = []
    

    def initialize(name, artist, genre)
        @@count += 1
        @@artists << artist
        @@genres << genre
        @@all_genres << genre
        @name = name
        @artist = artist
        @genre = genre
    end
    
    def self.count
        @@count
    end

    def name
        @name
    end

    def artist
        @artist
    end

    def genre
        @genre
    end

    def self.artists
        @@artists.uniq()
    end

    def self.genres
        @@genres.uniq()
    end

    def self.all_genres
        @@all_genres
    end






    def self.genre_count
        gen_count = Hash.new
        for genre in @@genres.uniq()
            gen_count[genre] = @@genres.count(genre)
        end
        gen_count
    end

    def self.artist_count
        art_count = Hash.new
        for artist in @@artists.uniq()
            art_count[artist] = @@artists.count(artist)
        end
        art_count
    end



end



















# class Song
#     attr_accessor :name, :artist, :genre

#     @@count = 0
#     @@artists = []
#     @@genres = []
#     @@all_genres = []

#     def initialize(name, artist, genre)
#         @@count += 1
#         @@artists << artist
#         @@genres << genre
#         @@all_genres << genre


#         @name = name
#         @artist = artist
#         @genre = genre
#     end

#     def self.count
#         @@count
#     end

#     def self.artists
#         @@artists.uniq()
#     end

#     def self.genres
#         @@genres.uniq()
#     end

#     def self.all_genres
#         @@all_genres
#     end

#     def self.genre_count
#         gen_count = Hash.new
#         for genre in @@genres.uniq()
#             gen_count[genre] = Song.all_genres.count(genre)
#         end
#                 # @@genres.uniq().map { |genre| gen_count[genre] = @@genres.count(genre) }
#     end

# end

# Song.new("Lucifer", "Jay-Z", "rap")
# Song.new("99 Problems", "Jay-Z", "rap")
# Song.new("hit me baby one more time", "Brittany Spears", "pop")

# binding.pry
