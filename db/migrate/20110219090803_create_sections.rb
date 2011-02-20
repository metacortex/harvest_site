# encoding: UTF-8
class CreateSections < ActiveRecord::Migration
  def self.up
    create_table :sections do |t|
			
			t.string	:name
			t.integer	:folders_count, :null => false, :default => 0

      t.timestamps
    end

		["제품소개", "시술 및 효능", "자료", "병원", "고객센터", "회사소개"].each do |section_name|
			Section.create(:name => section_name)
		end
  end

  def self.down
    drop_table :sections
  end
end
