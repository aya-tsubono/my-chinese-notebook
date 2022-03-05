class SentencesController < ApplicationController

  def new
    @sentence = Sentence.new
  end
end
