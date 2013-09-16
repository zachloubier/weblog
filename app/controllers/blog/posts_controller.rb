class Blog::PostsController < Blog::ApplicationController

	def index
		@posts = Post.all

		respond_to do |format|
			format.html # index.html.erb
			format.json { render json: @posts }
		end
	end

	def show
		@post = Post.find_by_slug(params[:slug])
		@comments = @post.comments.all
		if backend_admin_signed_in?
			@new_comment = Comment.new
			@new_comment.title = "titleasdf"
		end

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @post }
		end
	end

end
