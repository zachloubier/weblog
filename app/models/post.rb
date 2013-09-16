class Post < ApplicationModel
	# Associations
	belongs_to :admin
	has_and_belongs_to_many :categories
	has_and_belongs_to_many :tags
	has_many :comments
	
	# Accessible attributes
	attr_accessible :admin_id, :title, :description, :body, :slug, :category_ids, :tag_ids
end