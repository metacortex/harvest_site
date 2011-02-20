class UsersController < ApplicationController

	before_filter :login_required, :only => [ :edit, :update, :destroy ]

	def new
		@user = User.new
	end

	def create
		@user = User.new(params[:user])

		if @user.save
			session[:user_id] = @user.id
			@current_user = @user
			flash[:notice] = "계정이 만들어졌습니다."
			redirect_back_or_default(root_path)
		else
			render :new
		end
	end

	def create_session
		user = User.authenticate(params[:user])
		if user
			session[:user_id] = user.id
			redirect_back_or_default("/") and return
		else
			flash[:error] = "아이디와  비밀번호를 확인하세요."
			render :action => :login
		end
	end

	def logout
		@current_user = false
		session[:user_id] = nil

		flash[:notice] = "로그아웃되었습니다."
		redirect_back_or_default("/")
		reset_session
	end

	protected
		def check_permission
			@user = User.find(params[:id])
			@user == @current_user
		end

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

end
