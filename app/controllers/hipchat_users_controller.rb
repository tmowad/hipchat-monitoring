class HipchatUsersController < ApplicationController
  def list_users_now
    q = Quicky.new
    q.record_snapshot
    @lines = q.get_lines
  end

  def index
  end
end
