class Item < ActiveRecord::Base
  attr_accessible :description, :measurement, :name
  has_many :subscription, :dependent => :destroy
  has_many :tracking, :dependent => :destroy
end
