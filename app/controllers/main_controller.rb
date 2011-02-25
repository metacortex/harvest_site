# encoding: UTF-8
class MainController < ApplicationController

	def question
		Thread.new do
			UserMailer.question(params).deliver
		end

		flash[:notice] = "문의 메일이 전송되었습니다."
		redirect_to "/sections/5"
	end

	def rsvp
		Thread.new do
			UserMailer.rsvp(params).deliver
		end

		flash[:notice] = "컨퍼런스 참가 신청이 완료되었습니다."
		redirect_to "/sections/5/folders/9/boards/2/posts/28"
	end

end
