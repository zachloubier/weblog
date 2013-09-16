class Admin < ApplicationModel
	# Associations
	has_many :posts
	has_many :comments
	
	# Include default devise modules. Others available are:
	# :token_authenticatable, :confirmable,
	# :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable,
	     :recoverable, :rememberable, :trackable, :validatable

	# Accessible attributes
	attr_accessible :email, :password, :password_confirmation, :remember_me

	
end
