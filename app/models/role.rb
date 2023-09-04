class Role < ApplicationRecord
  belongs_to :department

  validates :name, presence: true, length: { minimum: 2 }
  validates :department_id, presence: true
end
