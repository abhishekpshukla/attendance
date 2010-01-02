class TimeSheet < ActiveRecord::Base
  belongs_to :user_detail, :foreign_key => :user_detail_id

  private
  def validate
   if !self.in_time.nil? && !self.out_time.nil?
     if self.in_time > self.out_time
       self.errors.add_to_base("Please select the proper time.")
     end
   end
  end

end
