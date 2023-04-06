class Project < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :area

  belongs_to :user
  has_one_attached :image
  has_many :comments
  

  validates :limit, presence: true
  validates :category_id, numericality: { other_than: 1, message: "can't be blank" } 
  validates :detail, presence: true
  validates :area_id, numericality: { other_than: 1, message: "can't be blank" } 
end
