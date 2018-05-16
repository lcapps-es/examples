class Transaction < ApplicationRecord
  belongs_to :account

  validates :quantity, presence: true, numericality: { only_integer: true }
end
