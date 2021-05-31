require 'rails_helper'

RSpec.describe Transaction, type: :model do
  context 'Validation' do
    specify { should validate_presence_of(:amount) }
  end

  context 'Association' do
    specify { should belong_to(:to) }
    specify { should belong_to(:from) }
  end
end
