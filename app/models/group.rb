class Group < ActiveRecord::Base

has_many :users
has_many :questions, ->{ ("created_at DESC") }

end