class Phone < ActiveRecord::Base
  has_many  :images
  has_one   :battery
  has_one   :storage
  has_one   :connectivity
  has_one   :operating_system
  has_one   :dimension
  has_one   :display
  has_one   :camera

  accepts_nested_attributes_for :images, :reject_if => lambda{|attributes| attributes['image'].blank?}
  accepts_nested_attributes_for :battery
  accepts_nested_attributes_for :storage
  accepts_nested_attributes_for :connectivity
  accepts_nested_attributes_for :operating_system
  accepts_nested_attributes_for :dimension
  accepts_nested_attributes_for :display
  accepts_nested_attributes_for :camera

end
