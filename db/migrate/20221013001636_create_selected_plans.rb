class CreateSelectedPlans < ActiveRecord::Migration[7.0]
  def change
    create_table :selected_plans do |t|
      t.string :status
      t.references :user, null: false, foreign_key: true
      t.references :plan, null: false, foreign_key: true

      t.timestamps
    end
  end
end
