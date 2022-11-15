require 'rails_helper'

RSpec.feature 'UserSignins', type: :feature do
  before :each do
    @user = User.new(name: 'Pepe Frog', email: 'test@example.com', password: 'password',
                     password_confirmation: 'password')
    @user.save
  end

  it 'signs me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'user_email', with: 'test@example.com'
      fill_in 'user_password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'Signed in successfully'
  end

  it 'should not sign me in' do
    visit '/users/sign_in'
    within('#new_user') do
      fill_in 'user_email', with: 'toast@example.com'
      fill_in 'user_password', with: 'password'
    end
    click_button 'Log in'
    expect(page).to have_content 'LOG IN'
  end
end
