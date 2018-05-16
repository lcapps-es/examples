class Account < ApplicationRecord
  belongs_to :client

  has_many :transactions

  validates_associated :transactions

  validates :transactions, presence: true

  def balance
    transactions.pluck(:quantity).reduce(:+)
  end
end
