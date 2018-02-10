class User < ActiveRecord::Base
  has_secure_password
  # this give me 3 new methods
  # never write to password_digest directly. 
  # ALWAYS write to 'password' collumn in database,
  # it will convert to an ecrypted password
  # and display in password_disgested' collumn of the database
end
