class WordMeanAnswersController < ApplicationController

  def index
    select_word = Word.order('RAND()').limit(1).ids
    @word = Word.find(select_word)
    @mean = @word.pluck(:words_meaning)
    @name = @word.pluck(:words_name)
    @word_id = @word.pluck(:id)
  end
end
