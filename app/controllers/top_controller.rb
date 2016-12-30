class TopController < ApplicationController

  def index
    @question = Question.new
    feed_contents = current_user.gourp.feed_contents.includes(:content)
    @questions = feed_contents.map(&:content)
  end

end
