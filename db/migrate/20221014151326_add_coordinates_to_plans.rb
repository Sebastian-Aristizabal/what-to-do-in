class AddCoordinatesToPlans < ActiveRecord::Migration[7.0]
  def change
    add_column :plans, :latitude, :float
    add_column :plans, :longitude, :float
  end
end
