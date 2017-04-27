class QuestionsController < ApplicationController
	def index
		@question = Question.new
	end

	def create
		question = Question.new(question_params)
	end

	private

	def question_params
		params.require(:question).permit(:title, :content)
	end
end
