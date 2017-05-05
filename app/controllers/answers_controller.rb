class AnswersController < ApplicationController
	def create
		@answer = current_user.answers.new(answer_params)
		if @answer.save
			flash[:success] = "Your answer was successfully created"
			redirect_back(fallback_location: root_path)
		else

		end
	end

	private

	def answer_params
		params.require(:answer).permit(:content)
	end
end
