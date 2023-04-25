class MoviesController< ApplicationController

  def index

    @list_of_movies=Movie.all

    render({:template=>"movies_templates/movie_index.html.erb"})
  
  end

  def details

        the_id= params.fetch("an_id")

        @the_movie = Movie.where({:id=>the_id}).at(0)
        
        #@filmography= Movie.where({ :director_id=> @the_director.id})


    render({:template=>"movies_templates/movie_details.html.erb"})
  
  end

end
