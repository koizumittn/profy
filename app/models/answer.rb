class Answer < ActiveRecord::Base

  belongs_to :user
  belongs_to :question

  has_one :feed_content, as: :content, dependent: :destroy

  #callback
  after_create :create_feed_content

  #validation
  validates_presence_of :user_id, :text

  private
  def create_feed_content
    self.feed_content = FeedContent.create(group_id: question.group_id, updated_at: updated_at)
  end

end