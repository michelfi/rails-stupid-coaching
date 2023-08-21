class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @userAnswer = params[:question]
    if @userAnswer.blank?
      @coach_answer = "I don't hear you"
    elsif @userAnswer.downcase == "i'm going to work right now!"
      @coach_answer = 'Silly question, get dressed and go to work!'
    else
      @coach_answer = "I don't care, get dressed and go to work!"
    end
  end
end
