class WordsController < ApplicationController
  def index
  end

  def new
    @word = Word.new
  end

  def create
    @word = Word.new(word_params)
    if @word.save
      redirect_to root_path
    else
      render :new
    end
  end

private
  def word_params
    params.require(:word).permit(:words, :words_meaning, :words_pronunciation)
  end
end
