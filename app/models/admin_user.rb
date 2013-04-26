require 'digest/sha1'

class AdminUser < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_protected :hashed_password, :salt

  def self.make_salt(username='')
    Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
  end

  def self.hash(password='', salt='')
    Digest::SHA1.hexdigest("Put #{salt} on the #{password}")
  end
end
