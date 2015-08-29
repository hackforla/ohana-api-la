module Admin
  class AdminController < ApplicationController
    before_action :authenticate_admin!
    layout 'admin'
  end
end
