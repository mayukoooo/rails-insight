class AnswerSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :question_id, :answer, :created_at, :updated_at
  belongs_to :question
  belongs_to :user
end
