require 'rails_helper'

RSpec.describe Project, type: :model do
  before do
    @project = FactoryBot.build(:project)
  end

  context '依頼案件が投稿できる場合' do
    it 'category_id、limit、detail、user_idが存在すれば投稿できる' do
      expect(@project).to be_valid
    end
    it 'suppulementが空でも投稿できる' do
      @project.suppulement = ''
      expect(@project).to be_valid
    end
    it 'imageが空でも投稿できる' do
      @project.image = nil
      expect(@project).to be_valid
    end
  end
  context '商品出品できない場合' do
    it 'category_idが空では登録できない' do
      @project.category_id = 1
      @project.valid?
      expect(@project.errors.full_messages).to include("Category can't be blank")
    end
    it 'limitが空では登録できない' do
      @project.limit = ""
      @project.valid?
      expect(@project.errors.full_messages).to include("Limit can't be blank")
    end
    it 'area_idが空では登録できない' do
      @project.area_id = 1
      @project.valid?
      expect(@project.errors.full_messages).to include("Area can't be blank")
    end
    it 'detailが空では登録できない' do
      @project.detail = ""
      @project.valid?
      expect(@project.errors.full_messages).to include("Detail can't be blank")
    end
  end
end
