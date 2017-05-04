class User < ApplicationRecord
  include Clearance::User
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  
  has_many :questions

  enum role: [:student, :mentor, :superadmin]

end
