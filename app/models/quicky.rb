require 'hipchat-api'
require 'json'

class Quicky
  def get_lines
    @lines
  end

  def initialize
    @lines = Array.new
  end

  def calc_users
    hipchat_api = HipChat::API.new('af8523ac255f5ab9787650bba53e9b')
    users_list = hipchat_api.users_list.body
    users_list_as_hash = JSON.parse(users_list)

    for user in users_list_as_hash['users']
      @lines.push(user['user_id'].to_s + ' ' +
                 user['email']   + ' ' +
                 user['status'])
    end
  end
end
