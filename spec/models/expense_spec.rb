require 'rails_helper'

RSpec.describe Expense, type: :model do
  before :each do
    @user = User.create!(id: 1, name: 'Testo', email: 'test@test.com', password: '12345678')
    Category.create!(id: 1, name: 'Name', icon: 'Icon', user_id: @user.id)
  end
  subject do
    Expense.new(name: 'Picasso', amount: rand(99..3333), category_ids: 1)
  end
  before { subject.save }

  describe 'validate data' do
    it 'it should have a name' do
      subject.name = nil
      expect(subject).to_not be_valid
    end

    it 'should have an amount' do
      subject.amount = nil
      expect(subject).to_not be_valid
    end

    it 'the amount should be numerical' do
      subject.amount = 'a'
      expect(subject).to_not be_valid
    end
  end
end
