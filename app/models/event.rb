require 'date'
class Event < ApplicationRecord
  has_many :attendances
  has_many :users, through: :attendances
  belongs_to :admin, class_name: 'User'

  validates :start_date,
  presence: true

  validates :duration,
  presence: true

  validate :duration_modulo_5 , :start_date_cannot_be_in_the_past
  

  validates :title,
  presence: true,
  length: { in: 5..140 }


  validates :description,
  presence: true,
  length: { in: 20..1000 }

  validates :price,
  presence: true,
  length: { in: 1..1000 }

  validates :location,
  presence: true


  private

  def start_date_cannot_be_in_the_past
    if start_date.present? && start_date < Date.today
      errors.add(:start_date, "can't be in the past")
    end
  end

  def duration_modulo_5
    if !(duration % 5==0) || duration.negative?
      errors.add(:duration, "")
    end
  end
end
