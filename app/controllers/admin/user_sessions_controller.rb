class Admin::UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user,    :only => :destroy
  
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      flash[:notice]  = t("admin.user_session.login_successful")
      redirect_to admin_dashboard_path
    else
      render :action => :new
    end
  end

end
