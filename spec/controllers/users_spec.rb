require 'rails_helper'

RSpec.describe UsersController, type: :controller do

	before (:each) do
		@user_attrs = FactoryGirl.attributes_for(:user)
	end

  	describe "users create" do
		it "creates a new user" do
			expect {
				User.create!(@user_attrs)
			}.to change(User, :count).by(1)
		end
	end
end
