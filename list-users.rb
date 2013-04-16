require 'hipchat-api'
require 'json'

hipchat_api = HipChat::API.new('af8523ac255f5ab9787650bba53e9b')
users_list = hipchat_api.users_list.body
users_list_as_hash = JSON.parse(users_list)

for user in users_list_as_hash['users']
  print user['user_id']
  print ' '
  print user['email']
  print ' '
  puts user['status']
end






