class Backend::Tag < ::Tag
	before_save { |tag| tag.slug = ApplicationModel.create_slug(tag.name) }
end