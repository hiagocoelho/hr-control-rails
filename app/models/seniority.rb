class Seniority < ApplicationRecord
  has_many :employees

  validates :name, presence: true, length: { minimum: 2 }
end
