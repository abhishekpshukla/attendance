class CreateAddresses < ActiveRecord::Migration
  def self.up
    create_table :addresses, :id => false do |t|
      t.string      :id,              :limit => 36, :null => false, :primary_key => true
      t.string      :user_detail_id,  :limit => 36, :null => false
      t.string      :address1,        :null => false
      t.string      :address2
      t.string      :city,            :limit => 150, :null => false
      t.string      :state,           :limit => 150, :null => false
      t.string      :country,         :limit => 150, :null => false
      t.string      :zip_code,        :limit => 50, :null => false
      t.timestamps
    end

    add_index :addresses, :user_detail_id
    add_index :addresses, :address1
    add_index :addresses, :city
    add_index :addresses, :state
    add_index :addresses, :country
    add_index :addresses, :zip_code
  end

  def self.down
    drop_table :addresses
    remove_index :addresses, :user_id
    remove_index :addresses, :address1
    remove_index :addresses, :city
    remove_index :addresses, :state
    remove_index :addresses, :country
    remove_index :addresses, :zip_code
  end
end
