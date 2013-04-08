class Item < ActiveRecord::Base
  attr_accessible :description, :measurement, :name
  has_many :subscription
  has_many :tracking
end
