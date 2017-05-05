class QuestionPolicy < ApplicationPolicy
  class Scope < Scope

  	# def initialize(user, question)
   #    @user  = user
   #    @scope = question
   #  end

    def resolve
      scope
    end
  end

  def initialize(user, question)
    @user = user
    @question = question
  end

  def create?
  	user.student? 
  end

end
