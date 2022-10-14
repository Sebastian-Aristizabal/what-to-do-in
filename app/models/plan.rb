class Plan < ApplicationRecord
  has_many_attached :photos
  has_many :reviews, dependent: :destroy
  has_many :selected_plans
  belongs_to :category
  belongs_to :user
end
