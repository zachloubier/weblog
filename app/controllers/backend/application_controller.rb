class Backend::ApplicationController < ApplicationController
	protect_from_forgery
	layout = 'backend/application'
	# before_filter :authenticate_admin!
end
