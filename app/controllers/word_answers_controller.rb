class WordAnswersController < ApplicationController
  def index
    select_word = Word.order("RAND()").limit(1).ids
    @word_id = Word.find(select_word)
    @mean = @word_id.pluck(:words_meaning)
    @name = @word_id.pluck(:words_name)
  end

  def new
    @word_answer = WordAnswers.new
  end

  def create
    @word_answer = WordAnswers.new(answer_params)
    if @word_answer.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def answer_params
    params.require(:word_answer).permit(:w_correct, :w_incorrect).merge(user_id: current_user.id, word_id: @word_id)
  end
end
