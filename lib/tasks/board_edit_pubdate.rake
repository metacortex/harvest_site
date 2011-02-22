desc "board_edit_pubdate"

task "board_edit_pubdate" => :environment do
	Post.all.each do |pt|
		if pubdate = /^\[([0-9]{4}-[0-9]{2}-[0-9]{2})\]/.match(pt.title.strip)
			pt.update_attributes(
				:created_at => pubdate[1],
				:title => pt.title.gsub(pubdate[0], '').strip
			)
		end
	end
end
