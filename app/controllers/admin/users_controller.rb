class Admin::UsersController < ApplicationController
  before_filter :require_user
  before_filter :is_admin?

  def index
    @employees = User.all
    respond_to do |format|
      format.html {}
      format.js {}
      format.xml { render :xml => @employees }
    end
  end
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    respond_to do |format|
      if @user.save_without_session_maintenance
        format.html { redirect_to admin_employees_path }
        format.xml { render :xml => @user }
      else
        format.html { render :new }
      end
    end
  end

end
