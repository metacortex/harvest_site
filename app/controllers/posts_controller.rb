class PostsController < ApplicationController

	before_filter :login_required, :only => [ :new, :create, :edit, :update, :destory ]
	before_filter :find_supers
	after_filter	:store_location, :only => [ :show ]

	def new
		@post = @board.posts.new(:section_id => @section.id, :folder_id => @folder.id)
	end

	def create
		@post = Post.new(params[:post].merge(:user_id => @current_user.id))

		if @post.save
			redirect_to([@section, @folder, @board, @post], :notice => "글이 등록되었습니다")
		else
		end
	end

	def show
		@post = Post.find(params[:id])
		@post.increment!(:hits)
	end

	def edit
		@post = Post.find(params[:id])
	end

	def update
		@post = Post.find(params[:id])
		if @post.update_attributes(params[:post])
			flash[:notice] = "수정되었습니다"
			redirect_to [@section, @folder, @board, @post]
		else
			flash[:error] = "수정에 실패했습니다"
			render :edit
		end
	end

	private
		def find_supers
			@folder = Folder.find(params[:folder_id])
			@section = Section.find(params[:section_id])
			@board = Board.find(params[:board_id])
		end

end
