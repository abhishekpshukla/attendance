class TimeSheet < ActiveRecord::Base
  belongs_to :user_detail, :foreign_key => :user_detail_id

  
end
