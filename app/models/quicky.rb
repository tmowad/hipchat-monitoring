require 'hipchat-api'
require 'json'

class Quicky
  def get_lines
    users = HipchatUser.all
    lines = Array.new
    for user in users
      snapshot = user.recent_snapshot
      lines.push(user.api_user_id.to_s + ' ' + user.api_email + ' ' + snapshot.status)
    end
    lines
  end

  def record_snapshot
    hipchat_api = HipChat::API.new('af8523ac255f5ab9787650bba53e9b')
    users_list = hipchat_api.users_list.body
    users_list_as_hash = JSON.parse(users_list)

    for user in users_list_as_hash['users']
      uid = user['user_id']
      hcuser = HipchatUser.find_by_api_user_id(uid)
      if hcuser == nil
        hcuser = HipchatUser.new
        hcuser.api_user_id = uid
        hcuser.admin_user_id = -1,
        hcuser.api_name = user['name'], 
        hcuser.api_email = user['email'], 
        hcuser.api_mention_name = user['mention_name'],
        hcuser.api_title = user['title']

        hcuser.save
      end

      snapshot = HipchatUserSnapshot.new
      # hipchat_user_id could be confusing, but it refers
      # to the id field of hipchat_user_id, rather than
      # hipchat API's user_id
      snapshot.hipchat_user_id = hcuser.id
      snapshot.last_active = user['last_active']
      snapshot.status = user['status']
      snapshot.status_message = user['status_message']

      snapshot.save
    end
  end
end
