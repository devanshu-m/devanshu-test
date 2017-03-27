require 'rails_helper'

RSpec.feature "UserRegistrations", type: :feature do
  feature "New user sign up" do
  	scenario "with all valid credentials" do
  		sign_up 'FirstName', 'Last_Name', 'valid@email.com', 'SomePassword'

  		expect(page).to have_content("Welcome! You have signed up successfully.")
  	end

  	scenario "with invalid email" do
  		sign_up 'FirstName', 'LastName', 'SomeInvalidEmail', 'SomePassword'

  		expect(page).to have_content("Log in")
  	end

  	def sign_up(first_name,last_name,email,password)
  		visit new_user_registration_path

  		fill_in 'user_first_name', with: first_name
  		fill_in 'user_last_name', with: last_name
  		fill_in 'user_email', with: email
  		fill_in 'user_password', with: password
  		fill_in 'user_password_confirmation', with: password

  		click_button 'Sign up'
  	end
  end
end


