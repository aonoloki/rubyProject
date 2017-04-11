class Task < ApplicationRecord
  belongs_to :author
  scope :undone, -> { where(status: false) }
  scope :done, -> { where(status: true) }
  scope :depassed, -> { where("date_due < ?",  DateTime.now) }
  scope :current, -> { where("date_due > ?",  DateTime.now) }
end
