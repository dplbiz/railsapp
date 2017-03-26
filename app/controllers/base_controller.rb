class BaseController  < ActionController::Base
	protect_from_forgery with: :exception
	before_filter :authenticate, except: [:signup, :create, :login, :logout]
	
	def authenticate
		redirect_to login_path unless User.find_by_id(session[:current_user_id])
	end
end
