class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  caches_page :new

  #redirect back to login page..
  def show
    redirect_to login_url
  end

  def different_user_signin
    cookies[:login] = nil
    redirect_to login_path
  end
  
  def new
    @user_session = UserSession.new
  end

  def create
    @user_session = UserSession.new(params[:user_session])
    if @user_session.save
      redirect_to account_url
      cookies[:login] = params[:user_session][:login]
    else
      render :action => "new"
    end
  end

  #logout
  def destroy
    current_user_session.destroy
    session[:language]  = nil
    session[:return_to] = nil
    redirect_back_or_default login_url
  end
end
