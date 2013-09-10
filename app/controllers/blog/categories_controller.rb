class Blog::CategoriesController < Blog::ApplicationController

	def show
		@posts = Category.find_by_slug(params[:slug]).posts

		respond_to do |format|
			format.html # show.html.erb
			format.json { render json: @posts }
	    end
	end
end
