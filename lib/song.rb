class Song
  
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  
  def initialize(name, artist, genre)
    @name, @artist, @genre = name, artist, genre
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
    genre_histogram = {}
    
    @@genres.each do |g|
      if genre_histogram[g]
        genre_histogram[g] += 1
      else
        genre_histogram[g] = 1
      end
    end
    genre_histogram
  end
  
  def self.artist_count
    artist_histogram = {}
    
    @@artists.each do |a|
      if artist_histogram[a]
        artist_histogram[a] += 1
      else
        artist_histogram[a] = 1
      end
    end
    artist_histogram
  end
  
end