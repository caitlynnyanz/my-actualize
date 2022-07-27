class Favorite_Song
  attr_reader :title, :artist, :lyrics
  attr_writer :title, :artist, :lyrics

  def initialize(title, artist, lyrics)
    @title = title
    @artist = artist
    @lyrics = lyrics
  end

  def info
    return "My favorite song is " + title + ", by " + artist + ", and the lyrics start with:" + lyrics
  end
end

song = Favorite_Song.new("What a wonderful world", "Louis Armstrong", "I see trees of green..")
puts song.info
