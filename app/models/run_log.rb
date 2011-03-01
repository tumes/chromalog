class RunLog < ActiveRecord::Base
  belongs_to :instrument
  belongs_to :analytical_method
  belongs_to :chromatographic_column
  
  has_many :calibration_levels
  has_many :area_counts, :through => :calibration_levels
  
  attr_accessible :instrument_id, :analytical_method_id, :chromatographic_column_id, :run_date, :pressure, :flow_rate
  
  validates_presence_of :instrument_id, :analytical_method_id, :chromatographic_column_id, :run_date, :pressure, :flow_rate
  validates_numericality_of :instrument_id, :analytical_method_id, :chromatographic_column_id
end
