class Transaction < ApplicationRecord
  belongs_to :to, class_name: 'User'
  belongs_to :from, class_name: 'User'

  validates :amount, presence: true
end
