class ChromatographicColumn < ActiveRecord::Base
  attr_accessible :instrument_id, :name, :brand, :description, :serial, :received, :notes, :analytical_method_id
  belongs_to :instrument
  belongs_to :analytical_method
  
  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
  validates_presence_of :instrument_id, :analytical_method_id, :brand, :description, :serial, :received
  validates_numericality_of :instrument_id, :analytical_method_id
  
end
