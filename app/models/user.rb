require 'digest/sha1'

class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name, :password_hash, :password_salt, :username
  has_and_belongs_to_many :roles
  
  translates  :email, :first_name, :last_name, :password_hash, :password_salt, :username
  class Translation
    attr_accessible :locale
  end

  attr_accessor :password
  validates_confirmation_of :password
  validates_presence_of :username
  before_save :encrypt_password
  after_save :clear_password


  attr_protected :password_hash, :password_salt
  def role_symbols
   roles.map do |role|
    role.name.underscore.to_sym
   end
  end  

  def self.make_salt(username="")
    Digest::SHA1.hexdigest("Use #{username} with #{Time.now} to make salt")
  end  
   
  def self.hash_with_salt(password="",salt="")
    Digest::SHA1.hexdigest("Put #{salt}  on the #{password}")
  end
    
  def self.authenticate(username="",password="")
   user = User.find_by_username(username)
   if user && user.password_match?(password)
    return user
   else
    return false 
   end 
  end
  
  def password_match?(password="")
   password_hash == User.hash_with_salt(password,password_salt)
  end
  
  private
  def encrypt_password
   unless password.blank?
    self.password_salt = User.make_salt(username) if password_salt.blank?
    self.password_hash = User.hash_with_salt(password,password_salt)
   end
  end
  
  def clear_password
   self.password = nil
  end 
  
   
end
