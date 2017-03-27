class PostsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def create
		@post = current_user.posts.new(post_params)

		if @post.save
			redirect_to @post
		else
			render 'new'
		end
	end

	def new
		@post = Post.new
	end

	def show
		@post = Post.find(params[:id])
	end

	def index
		@post = Post.paginate(:page => params[:page], per_page: 5).order("created_at DESC")
	end

	private
		def post_params
			params.require(:post).permit(:title, :body)
		end
end
