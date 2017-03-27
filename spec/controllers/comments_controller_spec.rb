require 'rails_helper'

RSpec.describe CommentsController, type: :controller do

	before (:each) do
		@comment_attrs = FactoryGirl.attributes_for(:comment)
	end

  	describe "comments create" do
		it "creates a new comment" do
			expect {
				Comment.create!(@comment_attrs)
			}.to change(Comment, :count).by(1)
		end
	end
end
