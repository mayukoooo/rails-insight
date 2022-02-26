class SharesSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :answer_id, :created_at
  belongs_to :answer
end
