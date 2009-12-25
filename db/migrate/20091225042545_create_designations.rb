class CreateDesignations < ActiveRecord::Migration
  def self.up
    create_table :designations do |t|
      t.string    :name, :null => false, :limit => 100
      t.text      :description
      t.timestamps
    end

    add_index :designations, :name
  end

  def self.down
    drop_table :designations
    remove_index :designations, :name
  end
end
