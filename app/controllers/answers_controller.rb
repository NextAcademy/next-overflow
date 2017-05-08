class AnswersController < ApplicationController
	def create
		@answer = current_user.answers.new(answer_params)
		@answer.question_id = params[:question_id]
		if @answer.save
			flash[:success] = "Your answer was successfully created"
		else
			flash[:error] = "There was an error saving your answer"
		end
		redirect_back(fallback_location: root_path)
	end

	private

	def answer_params
		params.require(:answer).permit(:content)
	end
end
