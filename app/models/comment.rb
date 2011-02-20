class Comment < ActiveRecord::Base

	belongs_to :post, :counter_cache => true
	belongs_to :user

	def owned_by?(u)
		!u.blank? && (self.user == u || u.is_admin?)
	end

end
