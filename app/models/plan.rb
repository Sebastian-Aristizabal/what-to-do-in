class Plan < ApplicationRecord
  has_many_attached :photos
  has_many :reviews, dependent: :destroy
  has_many :selected_plans, dependent: :destroy
  belongs_to :category
  belongs_to :user
  validates :title, :details, :address, presence: true
  validate :date_invalid
  before_save :date_invalid

  validate :hour_invalid
  before_save :hour_invalid

  include PgSearch::Model
  pg_search_scope :search,
  against: [:title, :details, :address],
  associated_against: {
    category: [:name]
  },
  using: {
    tsearch: { prefix: true } # <-- now `superman batm` will return something!
  }

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

   def date_invalid
      if self.start_date.present? && self.start_date < Date.today
        self.errors.add(:start_date, "la fecha inicial no puede ser menor a la fecha actual")
      end
      if self.end_date < self.start_date
        self.errors.add(:start_date, "la fecha inicial no puede ser mayor a la fecha final")
      end
    end

  def hour_invalid
    if self.start_hour.present? && self.start_hour > Time.now
      self.errors.add(:start_hour, "la hora inicial no puede ser menor a la hora actual")
    end
    if self.end_hour < self.start_hour && self.end_date == start_date
      self.errors.add(:start_hour, "la hora inicial no puede ser mayor a la hora final")
    end
  end
end

# t.datetime "start_date", precision: nil
# t.datetime "end_date", precision: nil
# t.datetime "start_hour", precision: nil
# t.datetime "end_hour", precision: nil
# self.end_date < self.start_date && self.start_hour < Date.today
