class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable, :trackable, :validatable

  attr_accessible :email, :name, :password, :password_confirmation, :terms_of_service
  attr_accessor :security_code
  
  validates_acceptance_of :terms_of_service, :accept => true
  validate :correct_security_code, :on => :create
  
  protected
  
    def correct_security_code
      errors.add(:security_code, "Security code not valid") if security_code != "1234"
    end
  
    # validates_each :security_code, :on => :create do |record, attr, value|
    #   record.errors.add attr, "Please enter correct security code" unless value && value == "1234"
    # end
    
end
