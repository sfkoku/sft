class AdminController < ApplicationController
  before_action :admin_check
  layout "admin"
  include AdminHelper

  def admin_check
    render "/admin/sessions/show" and return unless is_admin?
  end
end

