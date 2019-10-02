class Topic < ApplicationRecord
  validates :user_id, presence: true
  validates :description, presence: true
  validates :image, presence: true
  
  belongs_to :user
  
  mount_uploader :image, ImageUploader
  
  has_many :favorites, dependent: :destroy
  has_many :favorite_users, through: :favorites, source: 'user'
  
  has_many :comments
  
  def fav(user)
    favorites.create(user_id: user.id)
  end
  
  #いいねを解除する
  def unfav(user)
    favorites.find_by(user_id: user.id).destroy
  end
end