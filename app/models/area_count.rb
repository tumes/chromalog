class AreaCount < ActiveRecord::Base
  belongs_to :calibration_level
  
  attr_accessible :calibration_level_id, :area, :analyte
  
  #validates_presence_of :calibration_level_id, :area
  #validates_numericality_of :calibration_level_id, :area
end
