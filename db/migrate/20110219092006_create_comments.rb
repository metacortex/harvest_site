class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|

			t.integer	:post_id, :null => false
			t.integer	:user_id, :null => false
			t.text		:content

      t.timestamps
    end

		add_index :comments, :user_id
		add_index :comments, :post_id
  end

  def self.down
    drop_table :comments
  end
end
