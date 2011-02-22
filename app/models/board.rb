class Board < ActiveRecord::Base
	
	belongs_to :folder, :counter_cache => true
	has_many :posts, :dependent => :destroy

	def is_admin_only?
		NoticeBoardIDs.include? self.id
	end

end
