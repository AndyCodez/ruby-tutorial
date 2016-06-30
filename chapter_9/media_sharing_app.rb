module AcceptComments
  def comments
    #assigns a new value to @comments, but only if @comments is nil
    @comments = @comments || []
  end

  def add_comment(comment)
    #Call "comments" method to get the array in @comments and append to it
    comments << comment
  end
  
end

class Clip
  def play
    #Show ID of object we are playing
    puts "Playing #[object_id]..."
  end
end

class Video < Clip
  include AcceptComments
  attr_accessor :resolution
end

class Song < Clip
  include AcceptComments
  attr_accessor :beats_per_minute
end

video = Video.new
video.add_comment("Cool slow motion effect!")
video.add_comment("Weird ending.")

song = Song.new
song.add_comment("Awesome beat.")

p video.comments, song.comments
