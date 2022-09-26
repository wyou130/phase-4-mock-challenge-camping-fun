class CamperActivitiesSerializer < ActiveModel::Serializer
  attributes :id, :name, :age

  # can put activities in attributes but better practice to explicitly show relationship
  has_many :activities
end
