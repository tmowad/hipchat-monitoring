class HipchatUser < ActiveRecord::Base
  # attr_accessible :title, :body
  def recent_snapshot
    array = HipchatUserSnapshot.where(:hipchat_user_id => id).order('updated_at DESC').limit(1).to_a
    if array.length == 0
      nil
    else
      array[0]
    end
  end
end
