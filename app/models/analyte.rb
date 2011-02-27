class Analyte < ActiveRecord::Base
  belongs_to :analytical_method
  attr_accessible :name
  
  validates_presence_of :name
end
