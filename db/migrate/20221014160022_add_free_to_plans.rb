class AddFreeToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :free, :boolean
  end
end
