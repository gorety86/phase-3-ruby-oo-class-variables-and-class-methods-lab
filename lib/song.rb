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
      @@genres<<genre
      @@artists<<artist

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
        g_count=Hash.new
        @@genres.uniq.each do |genre|
            g_count[genre]=(@@genres.filter{|g| g==genre}).length
      end
      g_count
      end
    
      def self.artist_count
        a_count=Hash.new
        @@artists.uniq.each do |artist|
            a_count[artist]=(@@artists.filter{|a| a==artist}).length
      end
      a_count
    end
    end