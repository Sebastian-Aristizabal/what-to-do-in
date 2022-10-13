class Review < ApplicationRecord
  belongs_to :plan
  belongs_to :user
end
