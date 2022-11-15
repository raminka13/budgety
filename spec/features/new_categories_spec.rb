require 'rails_helper'

RSpec.describe 'categories/new.html.erb', type: :feature do
  describe 'new' do
    before(:each) do
      User.destroy_all
      Category.destroy_all
      Expense.destroy_all
      @user = User.new(name: 'test', password: '123123', email: 'test@test')
      @user.save

      @category = Category.create!(
        name: 'Name',
        icon: 'Icon',
        user_id: @user.id
      )
      @category.save

      visit new_user_session_path
      fill_in 'Email', with: 'test@test'
      fill_in 'Password', with: '123123'
      click_button 'Log in'
      click_link 'New category'
    end

    it 'shoud show the add a new category page' do
      expect(page).to have_content('NEW CATEGORY')
    end

    it 'shoud have a save button' do
      expect(page).to have_button('Create Category')
    end
  end
end
