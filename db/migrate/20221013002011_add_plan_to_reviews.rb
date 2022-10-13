class AddPlanToReviews < ActiveRecord::Migration[7.0]
  def change
    add_reference :reviews, :plan, null: false, foreign_key: true
  end
end
