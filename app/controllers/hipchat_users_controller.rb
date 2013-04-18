class HipchatUsersController < ApplicationController
  def list_users_now
    q = Quicky.new
    q.calc_users
    @lines = q.get_lines
  end

  def index
  end
end
