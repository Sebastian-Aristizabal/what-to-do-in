class Plan < ApplicationRecord
  has_many_attached :photos
  has_many :reviews, dependent: :destroy
  has_many :selected_plans, dependent: :destroy
  belongs_to :category
  belongs_to :user

  include PgSearch::Model
  pg_search_scope :search,
  against: [:title, :details, :address],
  associated_against: {
    category: [:name]
  },
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }
end
