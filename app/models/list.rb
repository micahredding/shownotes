class List < ActiveRecord::Base
  has_many :items
  attr_accessible :name, :items_attributes
  accepts_nested_attributes_for :items,
    :reject_if => proc { |attrs| attrs.all? { |k, v| v.blank? } },
    :allow_destroy => true 

end
