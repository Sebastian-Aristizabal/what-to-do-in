class Category < ApplicationRecord
  has_many :plans
  has_many_attached :photos
end
