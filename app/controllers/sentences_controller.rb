class SentencesController < ApplicationController

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

  private

  def sentence_params
    params.require(:sentence).permit(:sentences, :sentences_meaning).merge(user_id: current_user.id)
  end
end
