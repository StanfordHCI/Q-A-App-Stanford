class AnswersController < ApplicationController
  before_action :set_question
  before_action :set_answer, only: [:up_vote, :down_vote]

  def index
  end

  def new
  end

  def create
    current_user.answers.create(details: params[:answer][:details], question_id: params[:question_id])
    redirect_to :back
  end

  private
  def set_question
    @question = Question.find(params[:question_id])
  end

  def set_answer
    @answer = Answer.find(params[:id])
  end
end
