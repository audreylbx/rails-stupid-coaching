class CoachingController < ApplicationController
  def ask
  end

  def answer
    @query = params[:query]
    @answer = coach_answer_enhanced(@query)
  end

  def coach_answer(query)
  # TODO: return coach answer to your_message
    return "" if @query == "I am going to work right now!"
    if @query.include? "?"
      "Silly question, get dressed and go to work!"
    else
      "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(query)
  # TODO: return coach answer to your_message, with additional custom rules of yours!
    if @query == @query.upcase
      return "" if @query == "I am going to work right now!".upcase
      "I can feel your motivation! " + coach_answer(@query)
    else
      coach_answer(@query)
    end
  end

end
