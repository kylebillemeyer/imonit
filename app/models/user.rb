class User < ActiveRecord::Base
  attr_accessible :email, :name, :group_id
  belongs_to :group
  has_many :subscription, :dependent => :destroy
end
