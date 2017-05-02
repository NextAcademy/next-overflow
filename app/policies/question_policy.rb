class QuestionPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def initialize(user, question)
    @user = user
    @question = question
  end

  def create
  	user.student? 
  end
end
