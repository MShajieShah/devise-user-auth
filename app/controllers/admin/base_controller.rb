class Admin::BaseController < ApplicationController
	before_action :ensure_admin_user!

	def ensure_admin_user!
		unless current_user and current_user.admin?
		redirect_to root_path , notice: 'You Are Not Authorize...!!'
		end
	end
end	