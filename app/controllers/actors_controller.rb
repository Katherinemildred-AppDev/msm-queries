class ActorsController<ApplicationController

  def index

    @list_of_actors=Actor.all

    render({:template=> "actors_templates/actor_index.html.erb"})
  end

  def details

    the_id= params.fetch("an_id")

    @the_actor = Actor.where({:id=>the_id}).at(0)

    @filmography= Character.where({ :actor_id=> @the_actor.id})

    render({:template=> "actors_templates/actor_details.html.erb"})

  end


end
