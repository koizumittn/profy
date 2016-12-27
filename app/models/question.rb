class Question < ActiveRecord::Base

  # association
  belongs_to :user
  belongs_to :question
  has_many :answers


  # validation
  validates_presence_of :text, :user_id, :group_id

end
