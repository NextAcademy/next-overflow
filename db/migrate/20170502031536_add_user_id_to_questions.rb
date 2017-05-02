class AddUserIdToQuestions < ActiveRecord::Migration[5.0]
  def change
  	add_reference :questions, :user, index: true
  	add_foreign_key :questions, :users
  end
end
