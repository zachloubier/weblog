class Backend::ApplicationController < ApplicationController
	protect_from_forgery
	before_filter :authenticate_backend_admin!
end
