module ApplicationHelper

	def admin_actions(extra = "")
		if logged_in_as_admin?
			("<div class='admin_actions'>" +
				"#{link_to_function "폴더이름변경", "zLayer.open(event, '#{edit_section_folder_path(@section, @folder)}')", :class => "link"}" +
				"#{link_to "새로운 페이지", new_section_folder_page_path(@section, @folder), :class => "link"}" +
				"#{link_to_function "게시판추가", "zLayer.open(event, '#{new_section_folder_board_path(@section, @folder)}')", :class => "link"}" +
				extra +
			"</div>").html_safe
		end
	end

	def return_url(default = "/")
		return_to = session[:return_to] || default
		session[:return_to] = session[:previous] = nil
		return_to
	end

	def cancel_to(url = nil)
		url ||= return_url
		content_tag :input, nil, :type => "button", :class => "zButton spacer", :value => "취소", :onclick => "location.href='#{url}'"
	end

	def mouseover
		{ :onmouseover => "mOver(this)", :onmouseout => "mOut(this)" }
	end

	def nl2br(text)
		text.gsub(/[\n]/, " <br/>").html_safe
	end

	def br2space(text)
		text.gsub(/<br.?>/i,' ')
	end

	def dtime_in_words(from_time)
		(distance_of_time_in_words(from_time, Time.now).gsub(/[a-z]+/i) do |m|
			{'years'=>'^년', 'year'=>'^년', 'days'=>'^일', 'day'=>'^일', 'about'=>'약 ','second'=>'^초','seconds'=>'^초','minute'=>'^분','minutes'=>'^분','hour'=>'^시간','hours'=>'^시간','a'=>1}[m]
		end).gsub(/\s\^/,'') + " 전"
	end

	def	logged_in_as_admin?
		!@current_user.blank? && @current_user.is_admin?
	end

	def	logged_in?
		!@current_user.blank?
	end

	def flash_messages
		if flash[:error]
			fl = flash[:error]
			flash[:error] = nil
		elsif flash[:notice]
			fl = flash[:notice]
			flash[:notice] = nil
		end
		fl
	end

end
