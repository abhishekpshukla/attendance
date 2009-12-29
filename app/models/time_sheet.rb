class TimeSheet < ActiveRecord::Base
  belongs_to :user_detail, :foreign_key => :user_detail_id

  validate :once_a_day_in_time

  def once_a_day_in_time
    unless in_time.blank?
      exists = TimeSheet.find(:first, :conditions => ["DATE(in_time) = ?", Time.now.to_date])
      unless exists.blank?
        self.errors.add_to_base("Cannot add now")
      end
    end
  end
end
