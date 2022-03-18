class WordAnswersController < ApplicationController
  def index
    word_id = Word.order("RAND()").limit(1).ids
    @random = Word.find(word_id)
  end
end
