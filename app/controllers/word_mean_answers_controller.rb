class WordMeanAnswersController < ApplicationController

  def index
    select_word = Word.order('RAND()').limit(1).ids
    @word = Word.find(select_word)
    @mean = @word.pluck(:words_meaning)
    @name = @word.pluck(:words_name)
    @word_id = @word.pluck(:id)
  end
  
  def new
    @word_m_answer = WordMeanAnswer.new
  end

  def create
    @word_m_answer = WordMeanAnswer.new(answer_m_params)
    if @word_m_answer.save
      redirect_to action: 'index'
    else
      redirect_to root_path
    end
  end

  private

  def answer_params
    params.require(:word_m_answer).permit(:m_correct, :m_incorrect, :word_id).merge(user_id: current_user.id)
  end
end
