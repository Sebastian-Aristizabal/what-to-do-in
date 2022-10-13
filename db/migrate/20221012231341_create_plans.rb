class CreatePlans < ActiveRecord::Migration[7.0]
  def change
    create_table :plans do |t|
      t.string :title
      t.string :video_url
      t.text :details
      t.date :start_date
      t.date :end_date
      t.date :start_hour
      t.date :end_hour
      t.string :address
      t.string :link_web
      t.string :instagram_link
      t.string :facebook_link

      t.timestamps
    end
  end
end
