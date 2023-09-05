class Employee < ApplicationRecord
  belongs_to :role
  belongs_to :seniority

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :gender_identity, presence: true
  validates :birth_date, presence: true
  validates :address, presence: true
  validates :city, presence: true
  validates :state, presence: true
  validates :country, presence: true
  validates :phone, presence: true
  validates :email_address, presence: true
  validates :document, presence: true
  validates :role_id, presence: true
  validates :seniority_id, presence: true
end
