class AnswersController < ApplicationController
  # before_action :set_question, only: [:index, :show, :create, :edit, :update, :destroy]

  def index
  end

  def new
  end

  def create
    current_user.answers.create(details: params[:details], question_id: params[:question_id])

    redirect_to :back
  end

  private
  def set_question
    @question = Question.find(params[:question_id])
  end
end
