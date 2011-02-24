class Analyte < ActiveRecord::Base
  belongs_to :analytical_method
  attr_accessible :name
end
