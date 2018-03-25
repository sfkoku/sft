class AdminController < ApplicationController
  layout "admin"
  include AdminHelper
  before_action :is_administrator?
end

