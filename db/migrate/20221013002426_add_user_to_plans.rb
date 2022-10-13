class AddUserToPlans < ActiveRecord::Migration[7.0]
  def change
    add_reference :plans, :user, null: false, foreign_key: true
  end
end
