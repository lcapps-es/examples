class Client < ApplicationRecord
  has_many :accounts

  validates_associated :accounts

  validates :name,      presence: true, length: { maximum: 255 }
  validates :accounts,  presence: true
end
