class QuestionsController < ApplicationController

	def index
		if current_user
			@question = Question.new
			@questions = Question.all
		else
			redirect_to sign_in_path
		end
	end

	def show
		@question = Question.find(params[:id])
		byebug
		@answer = 
			if @question.answer != nil
				@question.answer
			else
				Answer.new
			end
	end

	def create
		@question = current_user.questions.new(question_params)
		authorize @question
		if @question.save
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
