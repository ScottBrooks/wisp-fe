class CreateLinks < ActiveRecord::Migration
  def self.up
    create_table :links do |t|
			t.integer :ancestor_id
			t.string	:ancestor_type
			t.integer	:descendant_id
			t.integer	:descendant_type
			t.boolean	:direct
			t.integer	:count

      t.timestamps
    end
  end

  def self.down
    drop_table :links
  end
end
