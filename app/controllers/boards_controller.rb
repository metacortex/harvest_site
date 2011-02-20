# encoding: UTF-8
class BoardsController < ApplicationController

	before_filter :admin_required, :only => [ :new, :create, :edit, :update, :destory ]
	before_filter :find_supers
	after_filter	:store_location, :only => [ :show ]

	def new
		@board = @folder.boards.new(:section_id => @section.id)
		render :layout => false
	end

	def create
		@board = Board.new(params[:board])

		if @board.save
			flash[:notice] = "게시판이 생성되었습니다."
			render :update do |page|
				page.redirect_to [@section, @folder, @board]
			end
		else
			render :update do |page|
				page.alert @board.errors.full_messages
			end
		end
	end

	def show
		@board = Board.find(params[:id])
		@title = @board.title

		@posts = @board.posts.paginate(:page => params[:page], :order => "id desc", :per_page => Post.per_page)
	end

	def edit
		@board = Board.find(params[:id])

		render :layout => false
	end

	def update
		@board = Board.find(params[:id])

		if @board.update_attributes(params[:board])
			flash[:notice] = "변경되었습니다"
			render :update do |page|
				page.redirect_to [@section, @folder, @board]
			end
		else
			render :update do |page|
				page.alert @board.errors.full_messages
				page << "zDone();"
			end
		end
	end

	private
		def find_supers
			@folder = Folder.find(params[:folder_id])
			@section = Section.find(params[:section_id])
		end

end
