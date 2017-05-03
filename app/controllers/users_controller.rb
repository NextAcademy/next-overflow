class UsersController < Clearance::UsersController

	def create
		@user = User.new(user_params)

		if @user.save 
			flash[:success] = "You account have been created"
			sign_in @user
			redirect_back_or url_after_create
		else
			flash[:error] = "There was an error in creating your account"
			render template: "users/new"
		end
	end

	private

	def user_params
		params.require(:user).permit(:name, :email, :password) 
	end

end
