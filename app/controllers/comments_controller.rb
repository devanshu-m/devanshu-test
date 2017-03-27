class CommentsController < ApplicationController

	before_action :authenticate_user!, except: [:index, :show]

	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create(comment_params.merge(user: current_user))
		redirect_to post_path(@post)
	end

	private
		def comment_params
			params.require(:comment).permit(:body)
		end
end
