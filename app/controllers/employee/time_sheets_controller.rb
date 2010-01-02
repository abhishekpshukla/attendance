class Employee::TimeSheetsController < ApplicationController
  before_filter :require_user
  resource_controller

  #PENDING: THE OUT TIME IS NOT UPDATING NEED TO WORK ON THAT...

  new_action.before do
    @todays_time_sheet          = current_user.user_detail.time_sheets.find(:first, :conditions => ["DATE(in_time) = ?", Time.now.to_date])
    @time_sheet                 = @todays_time_sheet.blank? ? TimeSheet.new : @todays_time_sheet
  end

  index.before do
    @time_sheets = current_user.user_detail.time_sheets.paginate(:page => params[:page], :per_page => 10)
  end
  
  create.before do
    @time_sheet.user_detail_id  = current_user.user_detail.id
  end

  update.wants.html { redirect_to employee_time_sheets_path }

  create.flash "Timesheet added"
  
  create.wants.html { redirect_to employee_time_sheets_path }

  update do
    failure do
      wants.html { render :action => :new }
    end
  end

end
