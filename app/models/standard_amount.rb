class StandardAmount < ActiveRecord::Base
  belongs_to :analytical_standard
  
  validates_presence_of :name, :amount, :batch
end
