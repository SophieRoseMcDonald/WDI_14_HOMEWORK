require 'pg'

#settings for active_record
require 'active_record'
options = {
  adapter: 'postgresql',
  database: 'goodfoodhunting',
}
ActiveRecord::Base.establish_connection(options)
