class SelectedPlan < ApplicationRecord
  enum status: {
    quiero_asistir: 0,
    asistí: 1,
    no_asistí: 2
  }
  belongs_to :user
  belongs_to :plan
end
