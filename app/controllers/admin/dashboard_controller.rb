module Admin
  class DashboardController < ApplicationController
    def index
      @users = User.all.to_a
    end
  end
end
