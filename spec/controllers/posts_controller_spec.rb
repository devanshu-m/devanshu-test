require 'rails_helper'

RSpec.describe PostsController, type: :controller do

	before (:each) do
		@post_attrs = FactoryGirl.attributes_for(:post)
	end

  	describe "posts create" do
		it "creates a new post" do
			expect {
				Post.create!(@post_attrs)
			}.to change(Post, :count).by(1)
		end
	end

	describe "should get #show" do
		it "assigns requested post to @post" do
			post = Post.create!(@post_attrs)
			get :show, id: post
			assigns(:post).should eq(post)
		end
	end

	
	it "should get #index" do
		get :index
	end	
end
