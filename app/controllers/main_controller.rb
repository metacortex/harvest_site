# encoding: UTF-8
class MainController < ApplicationController

	layout 'main'

	def question
		Thread.new do
			UserMailer.question(params).deliver
		end

		flash[:notice] = "문의 메일이 전송되었습니다."
		redirect_to "/sections/5"
	end

end
