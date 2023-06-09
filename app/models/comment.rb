class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project
  has_one_attached :image

  validates :reply, presence: true
end
