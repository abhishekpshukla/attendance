class Employee::TimeSheetsController < ApplicationController
  before_filter :require_user
  resource_controller

  #PENDING: THE OUT TIME IS NOT UPDATING NEED TO WORK ON THAT...
  
  create.before do
    @time_sheet.user_detail_id = current_user.user_detail.id
  end

  create.flash "Timesheet added"
  
  create.wants.html { redirect_to employee_time_sheets_path }
  
end
