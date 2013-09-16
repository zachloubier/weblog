class Comment < ApplicationModel
	# Associations
	belongs_to :post
	belongs_to :admin

	# Accessible attributes
	attr_accessible :title, :body, :admin_id, :post_id
end
