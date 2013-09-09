class Backend::PostsController < Backend::ResourceController

	protected
		def collection
			@posts = Post.order(:title).page params[:page]
			# @posts = Post.order(:title).paginate(:page => params[:page])
		end
end
