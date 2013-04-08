class CreateTrackings < ActiveRecord::Migration
  def change
    create_table :trackings do |t|
      t.integer :item_id
      t.integer :group_id
      t.float :threshold
      t.float :count
      t.float :total_estimated_cost
      t.integer :tenant_on_it

      t.timestamps
    end
  end
end
