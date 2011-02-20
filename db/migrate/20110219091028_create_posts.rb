class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|

			t.integer	:section_id, :null => false
			t.integer	:folder_id, :null => false
			t.integer	:board_id, :null => false
			t.integer	:user_id, :null => false
			t.string	:title
			t.text		:content
			t.integer	:hits, :null => false, :default => 0
			t.integer	:comments_count, :null => false, :default => 0

			t.string		:attachment_file_name
			t.string		:attachment_content_type
			t.integer		:attachment_file_size
			t.datetime	:attachment_updated_at

      t.timestamps
    end

		add_index :posts, :board_id
		add_index :posts, :user_id
  end

  def self.down
    drop_table :posts
  end
end
