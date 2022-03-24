require 'rails_helper'

RSpec.describe Word, type: :model do
  before do
    @word = FactoryBot.build(:word)
  end

  describe '単語の登録' do
    context '登録できる場合' do
      it '全ての項目を正しく入力すれば登録できる' do
        expect(@word).to be_valid
      end
    end
    context '登録できない場合' do
      it 'wordsが空では作成できない' do
        @word.words_name = ''
        @word.valid?
        expect(@word.errors.full_messages).to include("Words name can't be blank")
      end
      it 'words_meaningが空では作成できない' do
        @word.words_meaning = ''
        @word.valid?
        expect(@word.errors.full_messages).to include("Words meaning can't be blank")
      end
      it 'words_pronunciationが空では作成できない' do
        @word.words_pronunciation = ''
        @word.valid?
        expect(@word.errors.full_messages).to include("Words pronunciation can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @word.user = nil
        @word.valid?
        expect(@word.errors.full_messages).to include('User must exist')
      end
    end
  end
end
