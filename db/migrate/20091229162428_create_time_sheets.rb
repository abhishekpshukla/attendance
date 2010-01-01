class CreateTimeSheets < ActiveRecord::Migration
  def self.up
    create_table :time_sheets do |t|
      t.string    :user_detail_id, :limit => 36, :null => false
      t.datetime  :in_time
      t.datetime  :out_time
      t.boolean   :is_late, :default => false
      t.boolean   :manual_in_time, :default => false
      t.text      :manual_in_time_note
      t.timestamps
    end

    add_index :time_sheets, :user_detail_id
  end

  def self.down
    drop_table :time_sheets
    remove_index :time_sheets, :user_detail_id
  end
end
