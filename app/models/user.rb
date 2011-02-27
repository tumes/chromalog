class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  attr_accessible :email, :name, :password, :password_confirmation
end
