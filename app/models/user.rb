class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, authentication_keys: [:email, :group_key]
  # accesor
  belongs_to :group
  attr_accessor 'group_key'
end
