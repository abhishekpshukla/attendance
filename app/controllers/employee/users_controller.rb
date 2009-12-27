class Employee::UsersController < ApplicationController
  before_filter :require_user
  #resource_controller

  def edit
    @user = User.find(current_user.id)
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      User.transaction do
        if @user.update_attributes(params[:user])
          flash[:notice]  = "Profile updated successfully"
          format.html { redirect_to edit_employee_user_path }
        else
          format.html { render :edit }
        end
      end
    end
  end

end
