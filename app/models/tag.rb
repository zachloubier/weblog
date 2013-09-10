class Tag < ApplicationModel
	# Associations
	has_and_belongs_to_many :posts

	# Accessible attributes
	attr_accessible :name, :slug
end