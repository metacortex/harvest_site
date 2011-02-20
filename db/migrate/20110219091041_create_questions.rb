class CreateQuestions < ActiveRecord::Migration
  def self.up
    create_table :questions do |t|

			t.integer	:user_id
			t.string	:writer_name
			t.string	:email
			t.string	:contact_number
			t.string	:title
			t.text		:content

			t.string		:attachment_file_name
			t.string		:attachment_content_type
			t.integer		:attachment_file_size
			t.datetime	:attachment_updated_at

      t.timestamps
    end
  end

  def self.down
    drop_table :questions
  end
end
