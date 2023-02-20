class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @given_answer = params[:question]
    if @given_answer == 'I am going to work'
      @answer = 'Great!'
    elsif @given_answer.last == '?'
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
