require 'rails_helper'

RSpec.describe WordMeanAnswer, type: :model do
  before do
    @word_mean_answer = FactoryBot.build(:word_mean_answer)
  end

  describe '単語の意味テストの登録' do
    context '登録できる場合' do
      it '必要な項目が適切に入力されて入れば登録できる' do
        expect(@word_mean_answer).to be_valid
      end
    end
    context '登録できない場合' do
      it 'm_correctが空では作成できない' do
        @word_mean_answer.w_correct = ''
        @word_mean_answer.valid?
        expect(@word_mean_answer.errors.full_messages).to include("M correct can't be blank")
      end
      it 'm_incorrectが空では作成できない' do
        @word_mean_answer.w_incorrect = ''
        @word_mean_answer.valid?
        expect(@word_mean_answer.errors.full_messages).to include("M incorrect can't be blank")
      end
      it 'word_idが空では作成できない' do
        @word_mean_answer.word = nil
        @word_mean_answer.valid?
        expect(@word_mean_answer.errors.full_messages).to include('Word must exist')
      end
      it 'userが紐付いていないと保存できない' do
        @word_mean_answer.user = nil
        @word_mean_answer.valid?
        expect(@word_mean_answer.errors.full_messages).to include('User must exist')
      end
    end
  end
end
