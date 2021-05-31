require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validations' do
    specify { should validate_presence_of(:email) }
    specify { should validate_uniqueness_of(:email) }
    specify { should validate_presence_of(:phone) }
    specify { should validate_uniqueness_of(:phone) }
    specify { should validate_presence_of(:first_name) }
    specify { should validate_presence_of(:last_name) }
  end

  context 'Associations' do
    specify { should have_one(:wallet) }
    specify { should have_many(:transactions) }
  end
end
