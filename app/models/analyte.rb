class Analyte < ActiveRecord::Base
  belongs_to :instrument
  attr_accessible :name
end
