# encoding: UTF-8
class UserMailer < ActionMailer::Base
  default :from => "harvest.kor@gmail.com"

	def question(attrs)
		@attrs = attrs
		mail(:from => attrs[:email],
				:to => "harvest.kor@gmail.com",
				:subject => attrs[:title])
	end

	def rsvp(attrs)
		@attrs = attrs
		mail(:from => attrs[:email],
				:to => "harvest.kor@gmail.com",
				:subject => "컨퍼런스 참가 신청: #{attrs[:name]}")
	end

end
