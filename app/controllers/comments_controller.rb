class CommentsController < ApplicationController
	before_filter :authenticate, :except => [ :create ]
        def create
                @post = Post.find(params[:post_id])
                @comment = @post.comments.create!(params[:comment])
                redirect_to @post
        end

  # Authenticate
		def destroy
		    @post = Post.find(params[:post_id])
		    @comment = @post.comments.find(params[:id])
		    @comment.destroy
		    redirect_to post_path(@post)
		 end

		private
 		def authenticate
    		authenticate_or_request_with_http_basic do |name, password|
      			name == "petrarca.11" && password =="Gfthbv3421"
    			end
  			end
end

