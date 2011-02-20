class CreateFolders < ActiveRecord::Migration
  def self.up
    create_table :folders do |t|
			
			t.integer	:section_id, :null => false
			t.string	:name
			t.integer	:position

			t.integer	:pages_count, :null => false, :default => 0
			t.integer	:boards_count, :null => false, :default => 0

      t.timestamps
    end

		add_index :folders, :section_id
		add_index :folders, :position
  end

  def self.down
    drop_table :folders
  end
end
