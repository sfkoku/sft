class AdminController < ApplicationController
  layout "admin"
  include AdminHelper
  before_action :digest_auth
end

