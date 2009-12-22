class Admin::DashboardsController < ApplicationController
  before_filter :require_user
  before_filter :is_admin?

  def show
  end

end
