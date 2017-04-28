require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
	context "Get index" do 
		it "responds successfully with an HTTP 200 status code" do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

		it "renders the index template" do
		  get :index
		  expect(response).to render_template("index")
		end
	end

	context "POST questions" do
		it "redirects to index page" do
			params = { question: { title: "What time is it?" } }
			post :create, params
			expect(response).to render_template(:index)
			expect(response.body).to include("Widget was successfully created.")
		end
	end

	# context "POST create" do
	# 	 it "raises an error if missing params title" do
	# 	 	assign :question, Question.new(content: "Hi!")
 #      # params = { subscription: { start_on: "2015-09-28" } }

 #      render 

 #      expect do
 #        post :create, params
 #      end.to raise_error ActiveRecord::RecordInvalid
 #    end
	# end
end
