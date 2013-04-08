class Tracking < ActiveRecord::Base
  attr_accessible :count, :group_id, :item_id, :tenant_on_it, :threshold, :total_estimated_cost
  belongs_to :item
  belongs_to :group
  has_one :user
end
