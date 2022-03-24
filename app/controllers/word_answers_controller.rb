class WordAnswersController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :index]

  def index
    select_word = Word.order("RAND()").limit(1).ids
    @word = Word.find(select_word)
    @mean = @word.pluck(:words_meaning)
    @name = @word.pluck(:words_name)
    @word_id = @word.pluck(:id)
  end

  def new
    @word_answer = WordAnswer.new
  end

  def create
    @word_answer = WordAnswer.new(answer_params)
    if @word_answer.save
      redirect_to action: 'index'
    else
      redirect_to root_path
    end
  end

  private

  def answer_params
    params.require(:word_answer).permit(:w_correct, :w_incorrect, :word_id).merge(user_id: current_user.id)
  end
end