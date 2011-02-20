# encoding: UTF-8
class SectionsController < ApplicationController

	after_filter	:store_location, :only => [ :show ]

	def show
		@section = Section.find(params[:id])

		if @section.has_folder?
			redirect_to section_folder_path(@section, @section.folders.sequence.first)
		end
	end
end
