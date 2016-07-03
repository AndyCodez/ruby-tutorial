require 'yaml/store'

class MovieStore

  def initialize(file_name)
    #create a store that reads the given filename
    @store = YAML::Store.new(file_name)
  end

  #saves a movie to the store
  def save(movie)
    @store.transaction do
      #if movie doesn't have an id
      unless movie.id
        highest_id = @store.roots.max || 0 #find the highest id
        movie.id = highest_id + 1         #and increment it
      end
     @store[movie.id] = movie 
    end
  end
end
