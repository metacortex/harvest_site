class EditorController < ApplicationController

	layout false

	before_filter :admin_required, :only => [ :new_image, :create_image ]

	def create_image
		image = Asset.new(params[:asset])

		if image.save
			responds_to_parent do
				render :update do |page|
					page << "$('#{params[:editor_id]}').insertImage('#{image.attachment.url(:standard)}')"
					page << "zLayer.close();zDone();"
				end
			end
		else
		end
	end

end
