class StandardAmount < ActiveRecord::Base
  belongs_to :analytical_standard
  attr_accessible :name, :amount, :batch, :analytical_standard_id
  
  validates_presence_of :name, :amount, :batch, :analytical_standard_id
  validates_numericality_of :amount, :analytical_standard_id
end
