class UserMailer < ActionMailer::Base
  default :from => "harvest.kor@gmail.com"

	def question(attrs)
		@attrs = attrs
		mail(:from => attrs[:email],
				:to => "harvest.kor@gmail.com",
				:subject => attrs[:title])
	end
end
