class PhoneSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :display

  has_many  :images
  has_one   :battery
  has_one   :storage
  has_one   :connectivity
  has_one   :operating_system
  has_one   :dimension
  has_one   :camera

  def display
    object.display
  end


end
