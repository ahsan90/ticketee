require 'spec_helper'
feature "Singning up" do
  scenario 'Successful sign up' do
    visit '/'
    click_link 'Sign up'
    fill_in "Username", with: "Ahsan90"
    fill_in "Email", with: "Ahsan90@gmail.com"
    fill_in "Password", with: "password"
    fill_in "Password confirmation", with: "password"
    click_button "Sign up"

    expect(page).to have_content("You have signed up successfully.")
  end
end