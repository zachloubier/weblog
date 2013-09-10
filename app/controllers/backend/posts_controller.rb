class Backend::PostsController < Backend::ResourceController

	protected
		def collection
			@posts = Post.order(:title).page params[:page]
		end
end
