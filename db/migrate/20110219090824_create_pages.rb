class CreatePages < ActiveRecord::Migration
  def self.up
    create_table :pages do |t|

			t.integer	:section_id, :null => false
			t.integer	:folder_id, :null => false
			t.string	:title
			t.text		:content
			t.integer	:position

      t.timestamps
    end

		add_index :pages, :section_id
		add_index :pages, :folder_id
		add_index :pages, :position
  end

  def self.down
    drop_table :pages
  end
end
