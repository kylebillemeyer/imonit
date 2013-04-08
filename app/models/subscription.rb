class Subscription < ActiveRecord::Base
  attr_accessible :group_id, :item_id, :user_id
  belongs_to :item
  belongs_to :user
  belongs_to :group
end
