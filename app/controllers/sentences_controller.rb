class SentencesController < ApplicationController
  def index
    @sentences = Sentence.all
  end

  def new
    @sentence = Sentence.new
  end

  def create
    @sentence = Sentence.new(sentence_params)
    if @sentence.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
    @sentence = Sentence.find(params[:id])
  end

  def update
    @sentence = Sentence.find(params[:id])
    if @sentence.update(sentence_params)
      redirect_to user_path
    else
      render :edit
    end
  end

  private

  def sentence_params
    params.require(:sentence).permit(:sentences_name, :sentences_meaning).merge(user_id: current_user.id)
  end
end
