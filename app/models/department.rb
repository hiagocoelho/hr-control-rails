class Department < ApplicationRecord
  has_many :roles

  validates :name, presence: true, length: { minimum: 2 }
end
