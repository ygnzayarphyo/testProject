class BlogPost < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }
  mount_uploader :picture, PictureUploader

  validates :title, presence: true
  validates :content, presence: true

  ratyrate_rateable "original_score"

end
