class QuestionsController < ApplicationController
  def answer
    @query = params[:"thequestion"].to_s
    @coach = coach_answer(@query)
  end

  def ask
  end

  private

  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message == "I am going to work right now!"
      "..."
    elsif your_message[-1] == "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

end
