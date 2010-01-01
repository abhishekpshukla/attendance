module Employee::TimeSheetsHelper

  def form_for_helper(time_sheet, condition, &block)
    if condition
      form_for(time_sheet, :url => employee_time_sheets_path, &block)
    else
      form_for(time_sheet, :url => employee_time_sheet_path(time_sheet), :html => {:method => :put}, &block)
    end
  end

  def get_total_duration(time_sheet)
    in_time   = (time_sheet.in_time.strftime("%H").to_i)*60*60 + time_sheet.in_time.strftime("%M").to_i*60 + time_sheet.in_time.strftime("%S").to_i
    out_time  = (time_sheet.out_time.strftime("%H").to_i)*60*60 + time_sheet.out_time.strftime("%M").to_i*60 + time_sheet.out_time.strftime("%S").to_i
    time_calculatin = TimeCalculation.new(out_time - in_time)
    return time_calculatin.parse_time
  end
  
end
