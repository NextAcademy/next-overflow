class Question < ApplicationRecord
	validates :title, presence: true
	belongs_to :user
	has_one :answer
end
