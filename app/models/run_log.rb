class RunLog < ActiveRecord::Base
  belongs_to :instrument
  
  has_many :calibration_levels
  has_many :area_counts, :through => :calibration_levels
  accepts_nested_attributes_for :calibration_levels
  
  attr_accessible :instrument_id, :analytical_method, :chromatographic_column, :run_date, :pressure, :flow_rate, :calibration_levels_attributes
  validates_presence_of :instrument_id, :analytical_method, :chromatographic_column, :run_date, :pressure, :flow_rate
  validates_numericality_of :instrument_id
  
end
