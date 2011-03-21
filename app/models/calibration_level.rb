class CalibrationLevel < ActiveRecord::Base
  belongs_to :run_log
  has_many :area_counts
  accepts_nested_attributes_for :area_counts
  
  attr_accessible :run_log_id, :area_counts_attributes

end
