class Post < ActiveRecord::Base

	belongs_to :user
	belongs_to :board, :counter_cache => true
	has_many :comments, :dependent => :destroy

  has_attached_file :attachment

	def self.per_page
		15
	end

	def has_attachment?
		!self.attachment_file_name.blank? && !self.attachment_file_size.zero?
	end

	def owned_by?(u)
		!u.blank? && (self.user == u || u.is_admin?)
	end

end
