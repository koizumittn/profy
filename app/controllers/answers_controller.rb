class AnswersController < ApplicationController

  def new
    @question = Question.find(params[:question_id])
    @answer = Answer.new
    @answer.question_id = @question.id
  end

  def create
    Answer.create(create_params)
  end

  private
  def create_params
    params.require(:answer).permit(:text, :question_id)
  end

end
