class Folder < ActiveRecord::Base

	belongs_to :section, :counter_cache => true
	has_many :pages, :dependent => :destroy
	has_many :boards, :dependent => :destroy

	acts_as_list

	scope :sequence, :order => "position asc"

	def has_page?
		self.pages_count > 0
	end

	def has_multiple_pages?
		self.pages_count >= 2
	end

	def has_board?
		self.boards_count > 0
	end

	def has_both_of_page_and_board?
		self.has_page? && self.has_board?
	end

end
