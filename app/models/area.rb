class Area < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '新宿事業所' },
    { id: 3, name: '横浜事業所' },
    { id: 4, name: '大宮事業所' },
    { id: 5, name: '柏事業所' },
    { id: 6, name: '宇都宮事業所' },
  ]
  include ActiveHash::Associations
  has_many :users
  end