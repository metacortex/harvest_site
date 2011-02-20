class CommentsController < ApplicationController

	before_filter :login_required, :only => [:new, :create, :edit, :update, :destroy]

	def create
		@comment = Comment.new(params[:comment].merge(:user_id => @current_user.id))

		if @comment.save
			render :update do |page|
				page.insert_html :top, 'comments', :partial => 'comment', :locals => { :comment => @comment }
				page.visual_effect 'pulsate', dom_id(@comment), :duration => 0.75
				page << "resetForm();"
			end
		else
		end
	end

	def edit
		@comment = Comment.find(params[:id])
		render :layout => false
	end

	def update
		@comment = Comment.find(params[:id])

		if @comment.update_attributes(params[:comment])
			render :update do |page|
				page.replace dom_id(@comment), :partial => 'comment', :locals => { :comment => @comment }
				page.visual_effect 'pulsate', dom_id(@comment), :duration => 0.75
				page << "zLayer.close();zDone();"
			end
		else
		end
	end

	def destroy
		@comment = Comment.find(params[:id])

		if @comment.destroy
			render :update do |page|
				page.visual_effect 'dropOut', dom_id(@comment), :duration => 0.5
				page.delay(0.5) do
					page.remove dom_id(@comment);
				end
			end
		else
		end
	end

end
