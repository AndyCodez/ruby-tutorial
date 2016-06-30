class Clip
  attr_reader :comments

  def initialize
    #When new instance is created, set up empty array to add comments to
    @comments = []
  end

  def add_comment(comment)
    #Call "comments" method to get the array in @comments and append to it
    comments << comment
  end

  def play
    #Show ID of object we are playing
    puts "Playing #[object_id]..."
  end

end

class Video < Clip
  attr_accessor :resolution
end

class Song < Clip
  attr_accessor :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")

song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments
