class Backend::Category < ::Category
	before_save { |category| category.slug = ApplicationModel.create_slug(category.name) }
end