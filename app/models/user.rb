class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  attr_accessible :email, :name, :password, :password_confirmation, :terms_of_service, :security_code
  attr_accessor :security_code
  
  validates_acceptance_of :terms_of_service, :accept => true
  validate :correct_security_code, :on => :create
  
  protected
  
    # Security code constant lives in environment.rb
    def correct_security_code
      errors.add(:security_code, "Security code not valid") if security_code != SECURITY_CODE
    end
    
end
