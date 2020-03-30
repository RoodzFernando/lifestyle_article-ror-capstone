require 'rails_helper'

RSpec.describe User, type: :model do
  context 'Validation for the user' do
    it 'Ensure name presence' do
      user = User.new(name: '').save
      expect(user).to eq(false)
    end

    it "Ensure the minimum name's length" do
      user = User.new(name: 'Hey').save
      expect(user).to eq(false)
    end

    it 'should save successfully' do
      user = User.new(name: 'user_01').save
      expect(user).to eq(true)
    end
  end
end
