class QuestionSerializer < ActiveModel::Serializer
  attributes :id, :category_id, :text
  has_many :answers
  belongs_to :category
end
