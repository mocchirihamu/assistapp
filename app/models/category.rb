class Category < ActiveHash::Base
  self.data = [
    { id: 1, name: '---' },
    { id: 2, name: '申込書作成・修正依頼' },
    { id: 3, name: '請求書発行依頼' },
    { id: 4, name: 'データ集計依頼' },
    { id: 5, name: '受注登録・修正依頼' },
    { id: 6, name: '備品発注依頼' },
    { id: 7, name: '郵便物発送依頼' },
    { id: 8, name: 'その他の依頼' },
  ]
  include ActiveHash::Associations
  has_many :projects
  end