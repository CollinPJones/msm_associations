class Character < ActiveRecord::Base
  #movie_id: must be present
  validates :movie_id, presence: true

  #actor_id: must be present
  validates :actor_id, presence: true

  #Sets up relationship for ".movie" method
  belongs_to :movie, :class_name => "Movie", :foreign_key => "movie_id"

  #Sets up relationship for ".actor" method
  belongs_to :actor, :class_name => "Actor", :foreign_key => "actor_id"
end
