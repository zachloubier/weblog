class Category < ApplicationModel
	# Associations
	has_and_belongs_to_many :posts
end
