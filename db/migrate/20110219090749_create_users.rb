class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
			t.string  :email
			t.string  :login
			t.string  :password  

			t.integer :posts_count, :null => false, :default => 0
			t.integer :comments_count, :null => false, :default => 0
			t.integer :questions_count, :null => false, :default => 0

			t.integer :level, :null => false, :default => 1

      t.timestamps
    end

		User.create(
			:email => "admin@harvesttech.co.kr",
			:login => "admin",
			:password => 1234,
			:password_confirmation => 1234,
			:level => 9)

		add_index :users, :login
  end

  def self.down
    drop_table :users
  end
end
