class SignupSerializer < ActiveModel::Serializer
  # attributes :activity

  belongs_to :activity
  
  # def response
  #   serializer: ActivitySerializer
  # end

end
