require 'rails_helper'

RSpec.describe 'expenses/edit', type: :view do
  let(:expense) do
    Expense.create!(
      name: 'MyString',
      amount: 1
    )
  end

  before(:each) do
    assign(:expense, expense)
  end

  it 'renders the edit expense form' do
    render

    assert_select 'form[action=?][method=?]', expense_path(expense), 'post' do
      assert_select 'input[name=?]', 'expense[name]'

      assert_select 'input[name=?]', 'expense[amount]'
    end
  end
end
