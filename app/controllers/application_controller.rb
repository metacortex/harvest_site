# encoding: UTF-8
class ApplicationController < ActionController::Base
  rescue_from ActiveRecord::RecordNotFound, :with => :record_not_found
  protect_from_forgery

	before_filter :set_current_user

	def permission_denied
		if request.xhr?
			render :update do |page|
				page << "zDone();"
				page.alert("권한이 없습니다.")
			end
		else
			flash[:error] = "권한이 없습니다."
			redirect_to root_path
		end
	end

	def admin_required
		unless @current_user.is_admin?
			redirect_to "/" and return
		end
	end

	def login_required
		if @current_user.blank?
			access_denied
		end
	end

	def set_current_user
		@current_user ||= login_from_session || login_from_cookie
	end
	def login_from_session
		begin
			@current_user = User.find(session[:user_id]) unless session[:user_id].blank?
		rescue
			@current_user = nil
			session[:user_id] = nil
		end
	end
	def login_from_cookie
		begin
			@current_user = User.find(cookies[:cc_client_identifier]) if cookies[:cc_client_identifier]
		rescue
			@current_user = nil
			cookies[:cc_client_identifier] = nil
		end
	end

	def access_denied
		if request.xhr?
			(render :update do |page|
				page.alert "로그인 후 사용하실 수 있습니다."
				page.redirect_to login_path
			end) and return
		else
			store_location
			redirect_to login_path and return
		end
	end

	def store_location
		prev = request.fullpath.dup
		session[:previous] = session[:return_to] if !session[:return_to].blank? && prev != session[:return_to]
		session[:return_to] = prev if prev != session[:return_to]
	end

	def redirect_back_or_default(default)
		redirect_to(session[:return_to] || default)
		session[:return_to] = session[:previous] = nil
	end

	def record_not_found(exception)
		flash[:error] = "삭제되거나 찾을 수 없는 자료입니다."
		redirect_to root_path
	end
end
