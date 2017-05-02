class QuestionsController < ApplicationController
	def index
		byebug
		@question = Question.new
		@questions = Question.all 
	end

	def create
		question = current_user.questions.new(question_params)
		if question.save
			flash[:success] = "Your question was successfully submitted!"
			redirect_to root_path
		else	
			flash[:error] = "There was an error in submitting your question!"
			redirect_to root_path
		end
	end

	private

	def question_params
		params.require(:question).permit(:title, :content)
	end
end
