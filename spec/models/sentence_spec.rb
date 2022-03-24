require 'rails_helper'

RSpec.describe Sentence, type: :model do
  before do
    @sentence = FactoryBot.build(:sentence)
  end

  describe '例文の登録' do
    context '登録できる場合' do
      it '全ての項目を正しく入力すれば登録できる' do
        expect(@sentence).to be_valid
      end
    end
    context '登録できない場合' do
      it 'sentences_nameが空では作成できない' do
        @sentence.sentences_name = ''
        @sentence.valid?
        expect(@sentence.errors.full_messages).to include("Sentences name can't be blank")
      end
      it 'sentences_meaningが空では作成できない' do
        @sentence.sentences_meaning = ''
        @sentence.valid?
        expect(@sentence.errors.full_messages).to include("Sentences meaning can't be blank")
      end
      it 'userが紐付いていないと保存できない' do
        @sentence.user = nil
        @sentence.valid?
        expect(@sentence.errors.full_messages).to include('User must exist')
      end
    end
  end
end
