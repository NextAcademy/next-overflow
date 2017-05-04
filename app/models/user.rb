class User < ApplicationRecord
  include Clearance::User
  validates :name, presence: true

  has_many :questions

  enum role: [:student, :mentor, :superadmin]

  
end
