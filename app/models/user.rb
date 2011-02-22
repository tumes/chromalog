class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  attr_accessible :email, :password, :password_confirmation
end
