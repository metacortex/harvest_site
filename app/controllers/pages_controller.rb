class PagesController < ApplicationController

	before_filter :admin_required, :only => [ :new, :create, :edit, :update, :destroy ]
	before_filter :find_supers
	after_filter	:store_location, :only => [ :show ]

	def new
		@page = @folder.pages.new(:section_id => @section.id)
	end

	def create
		@page = Page.new(params[:page])

		if @page.save
			flash[:notice] = "페이지가 생성되었습니다."
			redirect_to [@section, @folder, @page]
		else
			flash[:error] = "페이지가 생성에 실패했습니다."
			render :new
		end
	end

	def show
		@page = Page.find(params[:id])
		@title = @page.title
	end

	def edit
		@page = Page.find(params[:id])
	end

	def update
		@page = Page.find(params[:id])

		if @page.update_attributes(params[:page])
			redirect_to([@section, @folder, @page], :notice => "수정되었습니다")
		else
			redirect_to([@section, @folder, @page], :notice => "페이지수정 중 에러가 발생했습니다")
			render :edit
		end
	end

	private
		def find_supers
			@folder = Folder.find(params[:folder_id])
			@section = Section.find(params[:section_id])
		end

end
