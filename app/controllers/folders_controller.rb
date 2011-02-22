# encoding: UTF-8
class FoldersController < ApplicationController

	before_filter :admin_required, :only => [ :create, :edit, :update, :destroy, :sort ]
	before_filter :find_supers, :except => [ :create, :sort ]
	after_filter	:store_location, :only => [ :show ]

	def sort
		params[:folders].each_with_index do |id, i|
			Folder.update_all(['position=?', i+1], ['id=?', id])
		end
		render :nothing => true
	end

	def create
		folder = Folder.new(params[:folder])

		if folder.save
			# initSortableFolders = @current_user.is_admin? ? javascript_tag("initSortableFolders();") : ""
			render :update do |page|
				page.insert_html :bottom, 'folders', :partial => 'folder', :locals => { :folder => folder }
				page.visual_effect 'pulsate', dom_id(folder), :duration => 0.75
				page << "resetForm();"
				page << "initSortableFolders();"
			end
		else
			render :udpate do |page|
				page.alert folder.errors.full_messages
			end
		end
	end

	def show
		if @folder.has_page?
			redirect_to [@section, @folder, @folder.pages.first]
		elsif @folder.has_board?
		  redirect_to [@section, @folder, @folder.boards.first]
		end

		if @folder.id == 10
			render :template => "/main/new_question"
		end
	end

	def edit
		render :layout => false
	end

	def update
		@folder = Folder.find(params[:id])

		if @folder.update_attributes(params[:folder])
			flash[:notice] = "변경되었습니다"
			render :update do |page|
				page.redirect_to return_url
			end
		else
		end
	end

	private
		def find_supers
			@folder = Folder.find(params[:id])
			@section = @folder.section
		end

end
