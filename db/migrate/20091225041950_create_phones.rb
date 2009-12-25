class CreatePhones < ActiveRecord::Migration
  def self.up
    create_table :phones, :id => false do |t|
      t.string      :id,              :limit => 36,   :null => false, :primary_key => true
      t.string      :user_detail_id,  :limit => 36,   :null => false
      t.string      :mobile,          :limit => 100,  :null => false
      t.string      :home,            :limit => 100
      t.string      :fax,             :limit => 100
      t.string      :office,          :limit => 100
      t.timestamps
    end

    add_index :phones, :user_detail_id
    add_index :phones, :mobile
    add_index :phones, :home
    add_index :phones, :fax
    add_index :phones, :office
  end

  def self.down
    drop_table :phones
    remove_index :phones, :user_id
    remove_index :phones, :mobile
    remove_index :phones, :home
    remove_index :phones, :fax
    remove_index :phones, :office
  end
end
