class Question < ActiveRecord::Base

  belongs_to :user
  belongs_to :question

  # validation
  validates_presence_of :text, :user_id, :group_id

end
