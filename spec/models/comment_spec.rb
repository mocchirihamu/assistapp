require 'rails_helper'

RSpec.describe Comment, type: :model do
  before do
    project = FactoryBot.create(:project)
    user = FactoryBot.create(:user)
    @comment = FactoryBot.build(:comment, project_id: project.id, user_id: user.id)
  end

  context 'コメントが投稿できる場合' do
    it 'replyが存在すれば投稿できる' do
      expect(@comment).to be_valid
    end
    it 'imageが空でも投稿できる' do
      @comment.image = nil
      expect(@comment).to be_valid
    end
    context 'コメントが投稿できない場合' do
      it 'replyが空では登録できない' do
        @comment.reply = ''
        @comment.valid?
        expect(@comment.errors.full_messages).to include("Reply can't be blank")
      end
    end
  end
end
