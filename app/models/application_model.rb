class ApplicationModel < ActiveRecord::Base
	self.abstract_class = true

	def self.create_slug(name)
		slug = name.gsub(/[^A-Za-z0-9|-| ]/, "")
		return slug.gsub(' ', '-')
	end
end