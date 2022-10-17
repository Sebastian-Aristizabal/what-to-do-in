class ChangeStatusStringToEnumToSelectedPlans < ActiveRecord::Migration[7.0]
  def change
    remove_column :selected_plans, :status
    add_column :selected_plans, :status, :integer, default: 0, null: true
  end
end
