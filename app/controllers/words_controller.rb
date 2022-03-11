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

  def edit
    @word = Word.find(params[:id])
  end


  def update
    @word = Word.find(params[:id])
    if @word.update(word_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def word_params
    params.require(:word).permit(:words, :words_meaning, :words_pronunciation).merge(user_id: current_user.id)
  end
end
