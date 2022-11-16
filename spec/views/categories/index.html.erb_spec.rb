require 'rails_helper'

RSpec.describe 'categories/index', type: :view do
  before(:each) do
    @user = User.create!(id: 1, name: 'Testo', email: 'test@test.com', password: '12345678')

    assign(:categories, [
             Category.create!(
               name: 'Name',
               icon: 'Icon',
               user_id: @user.id
             ),
             Category.create!(
               name: 'Name',
               icon: 'Icon',
               user_id: @user.id
             )
           ])
  end

  it 'renders a list of categories' do
    render
    cell_selector = Rails::VERSION::STRING >= '7' ? 'div>p' : 'tr>td'
    assert_select cell_selector, text: Regexp.new('Name'.to_s), count: 2
    assert_select cell_selector, text: Regexp.new('Icon'.to_s), count: 2
  end
end
