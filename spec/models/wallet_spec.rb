require 'rails_helper'

RSpec.describe Wallet, type: :model do
  context 'Validation' do
    specify { should validate_presence_of(:amount) }
  end

  context 'Association' do
    specify { should belong_to(:user) }
  end
end
