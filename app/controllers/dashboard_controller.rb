class DashboardController < ApplicationController
  before_filter :authenticate_moderator!
end
