class WordAnswersController < ApplicationController
  def index
    select_word = Word.order("RAND()").limit(1).ids
    word_id = Word.find(select_word)
    @word = word_id.pluck(:words_meaning)
  end
end
