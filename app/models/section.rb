class Section < ActiveRecord::Base

	has_many :folders, :dependent => :destroy

	def has_folder?
		self.folders_count > 0
	end

end
