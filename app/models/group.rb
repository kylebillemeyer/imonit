class Group < ActiveRecord::Base
  attr_accessible :description
  has_many :subscription
  has_many :tracking, :dependent => :destroy
  has_many :user
end
