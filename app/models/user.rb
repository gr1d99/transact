class User < ApplicationRecord
  with_options presence: true do
    validates :email, uniqueness: true
    validates :phone, uniqueness: true
    validates :first_name
    validates :last_name
  end
end
