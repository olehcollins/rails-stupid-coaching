class QuestionsController < ApplicationController
  before_action :set_question

  def ask
  end

  def answer
    time = Time.now
    if @question == 'what time is it?'
      @answer = "The time is #{time}"
    elsif @question == 'hello'
      @answer = 'hi, how are you?'
    else
      raise
    end
  end

  private

  def set_question
    @question = params[:answer]
  end
end
