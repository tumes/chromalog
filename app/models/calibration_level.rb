class CalibrationLevel < ActiveRecord::Base
  belongs_to :run_log
  has_many :area_counts
  
  attr_accessible :run_log_id
  
  validates_presence_of :run_log_id
  validates_numericality_of :run_log_id
end
