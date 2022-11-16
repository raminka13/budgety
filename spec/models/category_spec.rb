require 'rails_helper'

RSpec.describe Category, type: :model do
  before :each do
    @user = User.create!(id: 1, name: 'Testo', email: 'test@test.com', password: '12345678')
    @user.save
  end
  subject do
    Category.create!(
      name: 'Name',
      icon: 'Icon',
      user_id: @user.id
    )
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an amount' do
      subject.icon = nil
      expect(subject).to_not be_valid
    end
  end
end
