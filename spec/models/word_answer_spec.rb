require 'rails_helper'

RSpec.describe WordAnswer, type: :model do
  before do
    @word_answer = FactoryBot.build(:word_answer)
  end

  describe '単語テストの登録' do
    context '登録できる場合' do
      it '必要な項目が適切に入力されて入れば登録できる' do
        expect(@word_answer).to be_valid
      end
    end
    context '登録できない場合' do
      it 'w_correctが空では作成できない' do
        @word_answer.w_correct = ''
        @word_answer.valid?
        expect(@word_answer.errors.full_messages).to include("W correct can't be blank")
      end
      it 'w_incorrectが空では作成できない' do
        @word_answer.w_incorrect = ''
        @word_answer.valid?
        expect(@word_answer.errors.full_messages).to include("W incorrect can't be blank")
      end
      it 'word_idが空では作成できない' do
        @word_answer.word = nil
        @word_answer.valid?
        expect(@word_answer.errors.full_messages).to include("Word must exist")
      end
      it 'userが紐付いていないと保存できない' do
        @word_answer.user = nil
        @word_answer.valid?
        expect(@word_answer.errors.full_messages).to include('User must exist')
      end
    end
  end
end
