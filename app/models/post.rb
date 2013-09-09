class Post < ApplicationModel
	# Associations
	belongs_to :admin
	has_and_belongs_to_many :categories
	
	paginates_per 3
	attr_accessible :admin_id, :title, :description, :body, :slug
end