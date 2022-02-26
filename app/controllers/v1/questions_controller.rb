class V1::QuestionsController < ApplicationController
  def index
    questions = Question.all
    render json: questions
  end

  def create
    question = Question.new(question_params)
    if question.save
      render json: question
    else
      render json: question.errors
    end

    puts params
  end

  def destroy
    question = Question.find(params[:id])
    render json: question if question.destroy
  end

  private

  # ストロングパラメーターの設定
  def question_params
    params.require(:question).permit(:category_id, :text, :created_at)
  end
end
