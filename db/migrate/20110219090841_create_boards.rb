class CreateBoards < ActiveRecord::Migration
  def self.up
    create_table :boards do |t|

			t.string	:title
			t.integer	:section_id, :null => false
			t.integer	:folder_id, :null => false

			t.integer	:posts_count, :null => false, :default => 0

      t.timestamps
    end

		add_index :boards, :section_id
		add_index :boards, :folder_id
  end

  def self.down
    drop_table :boards
  end
end
