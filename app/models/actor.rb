class Actor < ActiveRecord::Base
  # name: must be present; must be unique in combination with dob
  validates :name, presence: true, uniqueness: {scope: :dob}

  #Sets up relationship for ".characters" method
  has_many :characters, :class_name => "Character", :foreign_key => "actor_id"

  #Sets up relationship for ".movies" method
  has_many :movies, :through => :characters
end
