class Board < ActiveRecord::Base
	
	belongs_to :folder, :counter_cache => true
	has_many :posts, :dependent => :destroy

end
