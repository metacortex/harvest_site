class Page < ActiveRecord::Base
	validates_presence_of :title, :message => "제목을 입력해주세요"

	belongs_to :section
	belongs_to :folder, :counter_cache => true

end
