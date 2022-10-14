class ChangeDateToPlans < ActiveRecord::Migration[7.0]
  def change
    change_column :plans, :start_date, :datetime
    change_column :plans, :end_date, :datetime
    change_column :plans, :start_hour, :datetime
    change_column :plans, :end_hour, :datetime
  end
end
