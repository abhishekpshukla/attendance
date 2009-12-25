class Admin::UsersController < ApplicationController
  before_filter :require_user
  before_filter :is_admin?
  resource_controller
  
  create.wants.html { redirect_to admin_employees_path }

  index.before do
    @employees = User.find_all_user_except_admin
  end

  
end
