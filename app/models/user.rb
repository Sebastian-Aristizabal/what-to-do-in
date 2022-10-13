class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one_attached :photo
  has_many :plans, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :selected_plans

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
