class CreateUserDetails < ActiveRecord::Migration
  def self.up
    create_table :user_details, :id => false do |t|
      t.string          :id,              :limit => 36, :null => false, :primary_key => true
      t.string          :user_id,         :limit => 36, :null => false
      t.integer         :employee_id,     :null => false
      t.integer         :designation_id,  :null => false
      t.string          :first_name,      :limit => 75, :null =>false
      t.string          :middle_name,     :limit => 75
      t.string          :last_name,       :limit => 75, :null =>false
      t.date            :date_of_joining, :null => false
      t.date            :date_of_birth,   :null => false
      t.string          :gender
      t.string          :alternative_email
      t.string          :nationality,     :limit => 75
      t.timestamps
    end

    add_index :user_details, :user_id
    add_index :user_details, :designation_id
    add_index :user_details, :employee_id
    add_index :user_details, :first_name
    add_index :user_details, :last_name
    add_index :user_details, :alternative_email
  end

  def self.down
    drop_table :user_details
    remove_index :user_details, :user_id
    remove_index :user_details, :designation_id
    remove_index :user_details, :first_name
    remove_index :user_details, :last_name
    remove_index :user_details, :alternative_email
  end
end
