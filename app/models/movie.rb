class Movie < ActiveRecord::Base
    def self.create_with_title(name)        
        movie = Movie.new(title:name) 
        movie.save
    end

    def self.first_movie 
        Movie.first    
    end

    def self.last_movie 
        Movie.last   
    end

    def self.movie_count 
        Movie.count    
    end

    def self.find_movie_with_id(id) 
        Movie.find(id)   
    end

    def self.find_movie_with_attributes(name)
        Movie.find_by(name)  
    end

    def self.find_movies_after_2002
        Movie.where("release_date > 2002") 
    end

    def update_with_attributes(id,title)
        allmembers=Movie.find_by(id:id)
        allmembers.update(title:title)

    end
    def self.update_all_titles(name)
        Movie.update_all(title:name)

    end

    def self.delete_by_id(id)
        Movie.find_by(id:id).delete
    end

    def self.delete_all_movies
        Movie.destroy_all()
    end
end