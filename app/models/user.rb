class User < ApplicationRecord
  include Clearance::User
  validates :name, presence: true
  has_many :questions
  enum status: [ :student, :mentor ]
end
