class User < ActiveRecord::Base

	validates_presence_of     :email, :message => "이메일을 입력해주세요."
  validates_format_of       :email, :with => /\A[\w\.%\+\-]+@(?:[A-Z0-9\-]+\.)+(?:[A-Z]{2}|com|org|net|edu|gov|mil|biz|info|mobi|name|aero|jobs|museum)\z/i, :message => "알 수 없는 형식의 이메일주소입니다."
  validates_uniqueness_of   :email, :message => "이메일이 이미 사용 중입니다."
  validates_length_of       :password, :within => 4..40, :message => "암호를 4~40자로 입력해주세요."

	attr_accessor :password_confirmation

	def self.authenticate(attrs)
		u = find_by_login(attrs[:login])
		u && u.password == attrs[:password] ? u : nil
	end

	def is_admin?
		self.level >= 9
	end

	protected
		def validate
			errors.add(:passowrd, "암호와 재확인이 다릅니다.") if self.password != @password_confirmation && self.from_crowd?
		end
end
