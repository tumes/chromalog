class AreaCount < ActiveRecord::Base
  belongs_to :calibration_level
  
  attr_accessible :calibration_level_id, :area, :analyte
  
  validates_presence_of :area
  validates_numericality_of :area
end
