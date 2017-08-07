class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:answer]
    @answer = coach_answer_enhanced(@question)
  end
end


def coach_answer(question)
  if question.include? "?"
    return "Silly question, get dressed and go to work!"
  elsif question == "I am going to work right now!"
    ""
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(question)
  if question.upcase.include? "?"
    return "I can feel your motivation! Silly question, get dressed and go to work!"
  elsif question == "I am going to work right now!".upcase
    ""
  else
    return "I can feel your motivation! I don't care, get dressed and go to work!"
  end
end
