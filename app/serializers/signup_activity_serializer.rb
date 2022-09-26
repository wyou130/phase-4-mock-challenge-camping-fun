class SignupActivitySerializer < ActiveModel::Serializer
  attributes :id, :name, :difficulty

  # belongs_to :activity

  def id
    # byebug 
    self.object.activity.id 
  end

  def name
    self.object.activity.name 
  end

  def difficulty
    self.object.activity.difficulty
  end

end
