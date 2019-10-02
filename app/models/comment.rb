class Comment < ApplicationRecord
  validates :topic_id, presence: true
  #コメントが空の場合エラーを起こす
  validates :content, presence: true
  
  belongs_to :user
  belongs_to :topic
end
