class V1::AnswersController < ApplicationController
  def index
    answers = Answer.all
    render json: answers
  end

  def create
    # answer = params[:answer].permit(:user_id, :question_id, :created_at, :updated_at)
    # Answer.create(answer)
    answer = Answer.new(answer_params)
    if answer.save
      render json: answer
    else
      render json: answer.errors
    end
    # puts params
  end

  def destroy
    answer = Answer.find(params[:id])
    render json: answer if answer.destroy
  end

  private

  def answer_params
    params.require(:answer)
  end

  # .permit(:answer, :user_id, :question_id)
end
