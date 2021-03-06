class V1::AnswersController < ApplicationController
  def index
    answers = Answer.all
    render json: answers
  end

  def create
    @answer = Answer.new(answer_params)
    if answer.save
      render json: answer
    else
      render json: answer.errors
    end
  end

  def destroy
    answer = Answer.find(params[:id])
    render json: answer if answer.destroy
  end

  private

  def answer_params
    params.require(:answer).permit(:user_id, :answer, :question_id)
  end

end
