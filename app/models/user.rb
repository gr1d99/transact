class User < ApplicationRecord
  with_options presence: true do
    validates :email, uniqueness: true
    validates :phone, uniqueness: true
    validates :first_name
    validates :last_name
  end

  has_one :wallet
  has_many :transactions, foreign_key: :from
end
