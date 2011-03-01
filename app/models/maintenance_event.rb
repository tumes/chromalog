class MaintenanceEvent < ActiveRecord::Base
  attr_accessible :instrument_id, :date, :problem, :maintenance_performed, :user_id, :result
  belongs_to :instrument
  belongs_to :user
  
  validates_presence_of :instrument_id, :date, :problem, :maintenance_performed, :user_id, :result
  validates_numericality_of :instrument_id, :user_id
end
