class Question < ActiveRecord::Base

  #callback
  after_create :create_feed_content

  # association
  belongs_to :user
  belongs_to :question
  has_many :answers
  has_one :feed_content, as: :content, dependent: :destroy


  # validation
  validates_presence_of :text, :user_id, :group_id

  def user_answer(user_id)
    Answer.find_by(user_id: user_id, question_id: id)
  end

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: group_id, updated_at: updated_at)
  end

end
