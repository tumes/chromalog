class ChromatographicColumn < ActiveRecord::Base
  attr_accessible :instrument_id, :name, :brand, :description, :serial, :received, :notes
  belongs_to :instrument
  
  validates :name, :presence => true,
                   :uniqueness => { :case_sensitive => false }
  validates_presence_of :instrument_id, :brand, :description, :serial, :received
  validates_numericality_of :instrument_id
end
