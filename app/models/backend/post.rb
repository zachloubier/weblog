class Backend::Post < ::Post
	paginates_per 3
	before_save { |post| post.slug = ApplicationModel.create_slug(post.title) }
end
