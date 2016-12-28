class Question < ActiveRecord::Base

  # association
  belongs_to :user
  belongs_to :question
  has_many :answers


  # validation
  validates_presence_of :text, :user_id, :group_id

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end

end
